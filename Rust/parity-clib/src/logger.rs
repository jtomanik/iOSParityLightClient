extern crate log;

use std::os::raw::{c_void, c_int};
use self::log::{Log, Level, Metadata, Record, LevelFilter};
use helpers::{ForeginCallbackObject, LoggingCallback};

struct CallbackLogger {
    level: Level,
    delegate: ForeginCallbackObject,
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

#[no_mangle]
pub unsafe extern fn parity_logger_start(owner: *mut c_void, callback: LoggingCallback) -> c_int {
    let foreign_callback_object = ForeginCallbackObject { owner: owner, callback: callback };
    let callback_logger = CallbackLogger { level: Level::Info, delegate: foreign_callback_object } ;
    let boxed_logger = Box::new(callback_logger);
    match log::set_boxed_logger(boxed_logger) {
        Ok(_) => {
            log::set_max_level(LevelFilter::Info);
            return 0
        },
        Err(_) => {
            return 1
        }
    }
}