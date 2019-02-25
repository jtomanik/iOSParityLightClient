extern crate parity_ethereum;
extern crate ethcore_light;
extern crate ethcore_sync as sync;
extern crate ethereum_types;
extern crate jsonrpc_core;
extern crate parity_rpc;
extern crate parity_version;
extern crate dir;
extern crate parking_lot;
extern crate ethcore;
extern crate ethcore_db;
extern crate parity_runtime;
extern crate parity_hash_fetch;
extern crate ethcore_logger;
extern crate ethkey;
extern crate ethstore;
extern crate kvdb;
extern crate kvdb_memorydb;
extern crate blooms_db;
extern crate ethcore_blockchain;

#[macro_use]
extern crate log as rlog;

mod run;
mod memory_store;

use ethcore_logger::RotatingLogger;

pub use self::run::{RunningClient,
                    RunOptionsLight};

//TODO: remove
pub use parity_ethereum::configuration::{Configuration,
                                         Cmd};
use std::sync::Arc;

/// Starts the parity client.
///
/// `on_client_rq` is the action to perform when the client receives an RPC request to be restarted
/// with a different chain.
///
/// `on_updater_rq` is the action to perform when the updater has a new binary to execute.
///
/// The first parameter is the command line arguments that you would pass when running the parity
/// binary.
///
/// On error, returns what to print on stderr.

pub fn start<Cr, Rr>(options: RunOptionsLight, logger: Arc<RotatingLogger>, on_client_rq: Cr, on_updater_rq: Rr) -> Result<RunningClient, String>
    where Cr: Fn(String) + 'static + Send,
          Rr: Fn() + 'static + Send
{

    // TODO: move this to `main()` and expose in the C API so that users can setup logging the way
    // 		they want
//    let logger_config = ethcore_logger::Config {
//        mode: None,
//        color: false,
//        file: None,
//    };
//    let logger = ethcore_logger::setup_log(&logger_config).expect("Logger is initialized only once; qed");

    let client = run::execute(options, logger, on_client_rq, on_updater_rq)?;
    Ok(client)
}