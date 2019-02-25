use std::sync::Arc;
use std::path::Path;
use std::fs;
use kvdb::{KeyValueDB};
use blooms_db;
use ethcore_blockchain::BlockChainDB;

struct InMemoryDB {
    blooms: blooms_db::Database,
    trace_blooms: blooms_db::Database,
    key_value: Arc<KeyValueDB>,
}

impl BlockChainDB for InMemoryDB {
    fn key_value(&self) -> &Arc<KeyValueDB> {
        &self.key_value
    }

    fn blooms(&self) -> &blooms_db::Database {
        &self.blooms
    }

    fn trace_blooms(&self) -> &blooms_db::Database {
        &self.trace_blooms
    }
}

/// Creates new test instance of `BlockChainDB`
pub fn new_db(client_path: &str) -> Arc<BlockChainDB> {
    let path = Path::new(client_path);

    let blooms_path = path.join("blooms");
    let trace_blooms_path = path.join("trace_blooms");
    fs::create_dir_all(&blooms_path).unwrap();
    fs::create_dir_all(&trace_blooms_path).unwrap();

    let db = InMemoryDB {
        key_value: Arc::new(kvdb_memorydb::create(ethcore_db::NUM_COLUMNS.unwrap())),
        blooms: blooms_db::Database::open(blooms_path).unwrap(),
        trace_blooms: blooms_db::Database::open(trace_blooms_path).unwrap(),
    };

    Arc::new(db)
}