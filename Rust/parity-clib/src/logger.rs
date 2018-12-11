extern crate log;
extern crate ethcore_logger;

use std::os::raw::{c_void};
use self::log::{Log, Level, Metadata, Record, LevelFilter};
use helpers::{ForeginCallbackObject, LoggingCallback};
use std::sync::atomic::{AtomicUsize, Ordering, ATOMIC_USIZE_INIT};
use ethcore_logger::{RotatingLogger};
use std::sync::{Arc};


static STATE: AtomicUsize = ATOMIC_USIZE_INIT;
const UNINITIALIZED: usize = 0;
const INITIALIZING: usize = 1;
const INITIALIZED: usize = 2;

struct CallbackLogger {
    level: Level,
    delegate: ForeginCallbackObject
}

impl CallbackLogger {

    fn new(delegate: ForeginCallbackObject) -> Self {
        CallbackLogger {
            level: Level::Info,
            delegate: delegate
        }
    }

    fn get_arc_logger(&self) -> Arc<RotatingLogger> {
        Arc::new(RotatingLogger::new("Info".to_string()))
    }
}

impl Log for CallbackLogger {

    fn enabled(&self, metadata: &Metadata) -> bool {
        metadata.level() <= self.level
    }

    fn log(&self, record: &Record) {
        if self.enabled(record.metadata()) {
            let log: &str = &record.args().to_string();
            self.delegate.call_with(log);
        }
    }

    fn flush(&self) {
    }
}

pub unsafe fn setup_log(callback_owner: *mut c_void, callback: LoggingCallback) -> Result<Arc<RotatingLogger>, String> {
    if STATE.load(Ordering::SeqCst) != UNINITIALIZED {
        return Err("Logger can be initialized only once; qed".to_string());
    }

    match STATE.compare_and_swap(UNINITIALIZED, INITIALIZING, Ordering::SeqCst) {
        UNINITIALIZED => {
            let foreign_callback_object = ForeginCallbackObject { owner: callback_owner, callback: callback };
            let callback_logger = CallbackLogger::new(foreign_callback_object);
            let arc_logger = callback_logger.get_arc_logger();
            let boxed_logger = Box::new(callback_logger);
            match log::set_boxed_logger(boxed_logger) {
                Ok(_) => {
                    log::set_max_level(LevelFilter::Info);
                    STATE.store(INITIALIZED, Ordering::SeqCst);
                    return Ok(arc_logger);
                },
                Err(_) => {
                    return Err("Error occurred during Logger initialization".to_string())
                }
            }
        }
        _ => return Err("Logger can be initialized only once; qed".to_string())
    }
}