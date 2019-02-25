use std::any::Any;
use std::sync::{Arc,
                Weak};
use std::time::{Duration,
                Instant};
use std::thread;

//parity lib
use parity_ethereum::{light_helpers,
                      rpc_apis,
                      user_defaults,
//                      db,
                      rpc,
                      cache,
                      params,
                      informant as parity_informant,
                      helpers,
                      signer};
use self::light_helpers::{EpochFetch,
                          QueueCull};
use self::parity_informant::{Informant,
                      LightNodeInformantData};
use self::user_defaults::UserDefaults;
use self::cache::CacheConfig;
use self::params::{SpecType,
                   Pruning,
                   AccountsConfig};
use self::helpers::passwords_from_files;
//parity
use parity_rpc::{Origin,
                 Metadata,
                 informant,
                 NetworkSettings,
                 PubSubSession,
                 FutureResult,
                 FutureResponse,
                 FutureOutput};
use parity_version::version;
use dir::{Directories,
          DatabaseDirectories};
use parity_runtime::Runtime;

// ethcore
use ethcore::spec::{
    SpecParams,
    OptimizeFor};
use ethcore::client::{DatabaseCompactionProfile};
use ethcore::account_provider::{AccountProvider,
                                AccountProviderSettings};
use ethcore::verification::queue::VerifierSettings;
use ethcore_light::Cache as LightDataCache;
use ethcore_logger::{RotatingLogger};


use parity_hash_fetch::fetch;
use ethkey::Password;
use memory_store;

// Pops along with error messages when a password is missing or invalid.
//TODO: that is probably not useful
const VERIFY_PASSWORD_HINT: &str = "Make sure valid password is present in files passed using `--password` or in the configuration file.";

// Number of minutes before a given gas price corpus should expire.
// Light client only.
const GAS_CORPUS_EXPIRATION_MINUTES: u64 = 60 * 6;

// Light client number of DNS threads
const FETCH_LIGHT_NUM_DNS_THREADS: usize = 1;

type LightClient = ::ethcore_light::client::Client<light_helpers::EpochFetch>;

#[derive(Debug, PartialEq)]
pub struct RunOptionsLight {
    pub cache_config: CacheConfig,
    pub accounts_config: AccountsConfig,
    pub dirs: Directories,
    pub spec: SpecType,
    pub pruning: Pruning,
    pub pruning_history: u64,
    pub pruning_memory: usize,
    pub compaction: DatabaseCompactionProfile,
    pub check_seal: bool,
    pub no_hardcoded_sync: bool,
    pub gas_price_percentile: usize,
    pub poll_lifetime: u32,
    pub geth_compatibility: bool,
    pub experimental_rpcs: bool,
    pub net_settings: NetworkSettings,
    pub verifier_settings: VerifierSettings,
    pub net_config: sync::NetworkConfiguration,
    pub custom_bootnodes: bool,
    pub network_id: Option<u64>,
    pub on_demand_response_time_window: Option<u64>,
    pub on_demand_request_backoff_start: Option<u64>,
    pub on_demand_request_backoff_max: Option<u64>,
    pub on_demand_request_backoff_rounds_max: Option<usize>,
    pub on_demand_request_consecutive_failures: Option<usize>,
}

/// Parity client currently executing in background threads.
///
/// Should be destroyed by calling `shutdown()`, otherwise execution will continue in the
/// background.
pub struct RunningClient {
    rpc: jsonrpc_core::MetaIoHandler<Metadata, informant::Middleware<rpc_apis::LightClientNotifier>>,
    informant: Arc<Informant<LightNodeInformantData>>,
    client: Arc<LightClient>,
    keep_alive: Box<Any>,
}

impl RunningClient {
    /// Performs an asynchronous RPC query.
    // FIXME: [tomaka] This API should be better, with for example a Future
    pub fn rpc_query(&self, request: &str, session: Option<Arc<PubSubSession>>)
                     -> FutureResult<FutureResponse, FutureOutput>
    {
        let metadata = Metadata {
            origin: Origin::CApi,
            session,
        };

        self.rpc.handle_request(request, metadata)
    }

    /// Performs a synchronous RPC query.
    /// Blocks execution until the result is ready.
    pub fn rpc_query_sync(&self, request: &str) -> Option<String> {
        let metadata = Metadata {
            origin: Origin::CApi,
            session: None,
        };

        self.rpc.handle_request_sync(request, metadata)
    }

    /// Shuts down the client.
    pub fn shutdown(self) {
        // Create a weak reference to the client so that we can wait on shutdown
        // until it is dropped
        let weak_client = Arc::downgrade(&self.client);
        drop(self.rpc);
        drop(self.keep_alive);
        self.informant.shutdown();
        drop(self.informant);
        drop(self.client);
        wait_for_drop(weak_client);
    }
}

// helper for light execution.
fn execute_implementation(run_options: RunOptionsLight, logger: Arc<RotatingLogger>) -> Result<RunningClient, String> {
    use ethcore_light::client as light_client;
    use sync::{LightSyncParams,
               LightSync,
               ManageNetwork};
    use parking_lot::{Mutex,
                      RwLock};

    // load spec
    //TODO: Check the performance with Optimization for CPU
    let chainspec = run_options.spec.spec(SpecParams::new(run_options.dirs.cache.as_ref(), OptimizeFor::Memory))?;

    // load genesis hash
    let genesis_hash = chainspec.genesis_header().hash();

    // database paths
    let db_dirs = run_options.dirs.database(genesis_hash, run_options.spec.legacy_fork_name(), chainspec.data_dir.clone());

    // create dirs used by parity
    run_options.dirs.create_dirs(run_options.accounts_config.unlocked_accounts.len() == 0, false)?;

    //print out running parity environment
    print_running_environment(&chainspec.data_dir, &run_options.dirs, &db_dirs);

    info!("Running in experimental {} mode.", "Light Client");

    // TODO: configurable cache size.
    let cache = LightDataCache::new(Default::default(), Duration::from_secs(60 * GAS_CORPUS_EXPIRATION_MINUTES));
    let cache = Arc::new(Mutex::new(cache));

    // start client and create transaction queue.
    let mut client_config = light_client::Config {
        queue: Default::default(),
        chain_column: ::ethcore_db::COL_LIGHT_CHAIN,
        verify_full: true,
        check_seal: run_options.check_seal,
        no_hardcoded_sync: run_options.no_hardcoded_sync,
    };

    client_config.queue.max_mem_use = run_options.cache_config.queue() as usize * 1024 * 1024;
    client_config.queue.verifier_settings = run_options.verifier_settings;

    // start on_demand service.

    let response_time_window = run_options.on_demand_response_time_window.map_or(
        ::ethcore_light::on_demand::DEFAULT_RESPONSE_TIME_TO_LIVE,
        |s| Duration::from_secs(s)
    );

    let request_backoff_start = run_options.on_demand_request_backoff_start.map_or(
        ::ethcore_light::on_demand::DEFAULT_REQUEST_MIN_BACKOFF_DURATION,
        |s| Duration::from_secs(s)
    );

    let request_backoff_max = run_options.on_demand_request_backoff_max.map_or(
        ::ethcore_light::on_demand::DEFAULT_REQUEST_MAX_BACKOFF_DURATION,
        |s| Duration::from_secs(s)
    );

    let on_demand = Arc::new({
        ::ethcore_light::on_demand::OnDemand::new(
            cache.clone(),
            response_time_window,
            request_backoff_start,
            request_backoff_max,
            run_options.on_demand_request_backoff_rounds_max.unwrap_or(::ethcore_light::on_demand::DEFAULT_MAX_REQUEST_BACKOFF_ROUNDS),
            run_options.on_demand_request_consecutive_failures.unwrap_or(::ethcore_light::on_demand::DEFAULT_NUM_CONSECUTIVE_FAILED_REQUESTS)
        )
    });

    let sync_handle = Arc::new(RwLock::new(Weak::new()));
    let epoch_fetcher = EpochFetch {
        on_demand: on_demand.clone(),
        sync: sync_handle.clone(),
    };


    // user defaults path
    let user_defaults_path = db_dirs.user_defaults_path();

    // load user defaults
    let user_defaults = UserDefaults::load(&user_defaults_path)?;

    // select pruning algorithm
    let algorithm = run_options.pruning.to_algorithm(&user_defaults);

    // initialize database.
//    let db = db::open_db(&db_dirs.client_path(algorithm).to_str().expect("DB path could not be converted to string."),
//                         &run_options.cache_config,
//                         &run_options.compaction).map_err(|e| format!("Failed to open database {:?}", e))?;

    //TODO: implement BlockChainDB for memorydb
    let db = memory_store::new_db(&db_dirs.client_path(algorithm).to_str().expect("DB path could not be converted to string."));

    let service = light_client::Service::start(client_config,
                                               &chainspec,
                                               epoch_fetcher,
                                               db,
                                               cache.clone()).map_err(|e| format!("Error starting light client: {}", e))?;
    let client = service.client().clone();
    let transaction_queue = Arc::new(RwLock::new(::ethcore_light::transaction_queue::TransactionQueue::default()));
    let provider = ::ethcore_light::provider::LightProvider::new(client.clone(), transaction_queue.clone());

    // start network.
    // set up bootnodes
    let mut net_config = run_options.net_config;
    if !run_options.custom_bootnodes {
        net_config.boot_nodes = chainspec.nodes.clone();
    }

    // set network path.
    net_config.net_config_path = Some(db_dirs.network_path().to_string_lossy().into_owned());
    let sync_params = LightSyncParams {
        network_config: net_config.into_basic().map_err(|e| format!("Failed to produce network config: {}", e))?,
        client: Arc::new(provider),
        network_id: run_options.network_id.unwrap_or(chainspec.network_id()),
        subprotocol_name: sync::LIGHT_PROTOCOL,
        handlers: vec![on_demand.clone()],
        attached_protos: Vec::new(),
    };
    let light_sync = LightSync::new(sync_params).map_err(|e| format!("Error starting network: {}", e))?;
    let light_sync = Arc::new(light_sync);
    *sync_handle.write() = Arc::downgrade(&light_sync);

    // spin up event loop
    let runtime = Runtime::with_default_thread_count();

    // queue cull service.
    let queue_cull = Arc::new(QueueCull {
        client: client.clone(),
        sync: light_sync.clone(),
        on_demand: on_demand.clone(),
        txq: transaction_queue.clone(),
        executor: runtime.executor(),
    });

    service.register_handler(queue_cull).map_err(|e| format!("Error attaching service: {:?}", e))?;

    // start the network.
    light_sync.start_network();

    // fetch service
    let fetch_client = fetch::Client::new(FETCH_LIGHT_NUM_DNS_THREADS).map_err(|e| format!("Error starting fetch client: {:?}", e))?;

    //TODO: Do we need rpc stats in a lib?
    let rpc_stats = Arc::new(informant::RpcStats::default());

    // prepare account provider
    let passwords = passwords_from_files(&run_options.accounts_config.password_files)?;
    let account_provider = Arc::new(prepare_account_provider(&run_options.spec, &run_options.dirs, &chainspec.data_dir, run_options.accounts_config, &passwords)?);

    // the dapps server
    //TODO: enable signer
    let signer_service = Arc::new(signer::new_service_from_dirs(&run_options.dirs, false, false));

    // start RPCs
    let deps_for_rpc_apis = Arc::new(rpc_apis::LightDependencies {
        signer_service: signer_service,
        client: client.clone(),
        sync: light_sync.clone(),
        net: light_sync.clone(),
        secret_store: account_provider,
        logger: logger,
        settings: Arc::new(run_options.net_settings),
        on_demand: on_demand,
        cache: cache.clone(),
        transaction_queue: transaction_queue,
        ws_address: None,
        fetch: fetch_client,
        geth_compatibility: run_options.geth_compatibility,
        experimental_rpcs: run_options.experimental_rpcs,
        executor: runtime.executor(),
        whisper_rpc: None, //TODO: add this to client. whisper_factory,
        private_tx_service: None, //TODO: add this to client.
        gas_price_percentile: run_options.gas_price_percentile,
        poll_lifetime: run_options.poll_lifetime
    });

    let dependencies = rpc::Dependencies {
        apis: deps_for_rpc_apis.clone(),
        executor: runtime.executor(),
        stats: rpc_stats.clone(),
    };

    // start rpc servers
    let rpc_direct = rpc::setup_apis(rpc_apis::ApiSet::All, &dependencies);

    // the informant
    let informant = Arc::new(Informant::new(
        LightNodeInformantData {
            client: client.clone(),
            sync: light_sync.clone(),
            cache: cache,
        },
        None,
        Some(rpc_stats),
        false,
    ));
    service.add_notify(informant.clone());
    service.register_handler(informant.clone()).map_err(|_| "Unable to register informant handler".to_owned())?;

    Ok(RunningClient {
        rpc: rpc_direct,
        informant,
        client,
        keep_alive: Box::new((service, runtime))
    })
}

/// Executes the given run command.
///
/// `on_client_rq` is the action to perform when the client receives an RPC request to be restarted
/// with a different chain.
///
/// `on_updater_rq` is the action to perform when the updater has a new binary to execute.
///
/// On error, returns what to print on stderr.
pub fn execute<Cr, Rr>(options: RunOptionsLight,
                       logger: Arc<RotatingLogger>,
                       on_client_rq: Cr,
                       on_updater_rq: Rr) -> Result<RunningClient, String>
    where Cr: Fn(String) + 'static + Send,
          Rr: Fn() + 'static + Send
{
    execute_implementation(options, logger)
}

fn print_running_environment(data_dir: &str, dirs: &Directories, db_dirs: &DatabaseDirectories) {
    info!("Starting {}", version());
    info!("Keys path {}", dirs.keys_path(data_dir).to_string_lossy().into_owned());
    info!("DB path {}", db_dirs.db_root_path().to_string_lossy().into_owned());
}

fn prepare_account_provider(spec: &SpecType, dirs: &Directories, data_dir: &str, cfg: AccountsConfig, passwords: &[Password]) -> Result<AccountProvider, String> {
    use ethstore::EthStore;
    use ethstore::accounts_dir::RootDiskDirectory;

    let path = dirs.keys_path(data_dir);
    let dir = Box::new(RootDiskDirectory::create(&path).map_err(|e| format!("Could not open keys directory: {}", e))?);
    let account_settings = AccountProviderSettings {
        enable_hardware_wallets: false,
        hardware_wallet_classic_key: spec == &SpecType::Classic,
        unlock_keep_secret: cfg.enable_fast_unlock,
        blacklisted_accounts: 	match *spec {
            SpecType::Morden | SpecType::Ropsten | SpecType::Kovan | SpecType::Sokol | SpecType::Dev => vec![],
            _ => vec![
                "00a329c0648769a73afac7f9381e08fb43dbea72".into()
            ],
        },
    };

    let ethstore = EthStore::open_with_iterations(dir, cfg.iterations).map_err(|e| format!("Could not open keys directory: {}", e))?;
    if cfg.refresh_time > 0 {
        ethstore.set_refresh_time(::std::time::Duration::from_secs(cfg.refresh_time));
    }
    let account_provider = AccountProvider::new(
        Box::new(ethstore),
        account_settings,
    );

    // Add development account if running dev chain:
    //    if let SpecType::Dev = *spec {
    //        insert_dev_account(&account_provider);
    //    }

    for a in cfg.unlocked_accounts {
        // Check if the account exists
        if !account_provider.has_account(a) {
            return Err(format!("Account {} not found for the current chain. {}", a, spec));
        }

        // Check if any passwords have been read from the password file(s)
        if passwords.is_empty() {
            return Err(format!("No password found to unlock account {}. {}", a, VERIFY_PASSWORD_HINT));
        }

        if !passwords.iter().any(|p| account_provider.unlock_account_permanently(a, (*p).clone()).is_ok()) {
            return Err(format!("No valid password to unlock account {}. {}", a, VERIFY_PASSWORD_HINT));
        }
    }

    Ok(account_provider)
}

fn wait_for_drop<T>(w: Weak<T>) {
    let sleep_duration = Duration::from_secs(1);
    let warn_timeout = Duration::from_secs(60);
    let max_timeout = Duration::from_secs(300);

    let instant = Instant::now();
    let mut warned = false;

    while instant.elapsed() < max_timeout {
        if w.upgrade().is_none() {
            return;
        }

        if !warned && instant.elapsed() > warn_timeout {
            warned = true;
            warn!("Shutdown is taking longer than expected.");
        }

        thread::sleep(sleep_duration);
    }

    warn!("Shutdown timeout reached, exiting uncleanly.");
}
