use std::os::raw::{c_char, c_void};

pub type LoggingCallback = Option<extern "C" fn(*mut c_void, *const c_char, usize)>;

#[repr(C)]
pub struct ForeginCallbackObject {
    pub owner: *mut c_void,
    pub callback: LoggingCallback
}

unsafe impl Send for ForeginCallbackObject {}
unsafe impl Sync for ForeginCallbackObject {}

impl ForeginCallbackObject {

    pub fn call_with(&self, string: &str) {
        if let Some(ref target_callback) = self.callback {
            target_callback(self.owner, string.as_bytes().as_ptr() as *const _, string.len());
        }
    }
}