// Copyright 2015-2018 Parity Technologies (UK) Ltd.
// This file is part of Parity.

// Parity is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// Parity is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with Parity.  If not, see <http://www.gnu.org/licenses/>.

//! Note that all the structs and functions here are documented in `parity.h`, to avoid
//! duplicating documentation.

extern crate parity_ethereum;
extern crate panic_hook;

mod helpers;
mod logger;

use std::os::raw::{c_char, c_void, c_int};
use std::{panic, ptr, str};
use std::ffi::{CStr, CString};
use helpers::{LoggingCallback, ForeginCallbackObject};

#[cfg(feature = "malloc")]
use std::alloc::System;

#[cfg(feature = "malloc")]
#[global_allocator]
static A: System = System;

pub use self::logger::parity_logger_start;

#[no_mangle]
pub unsafe extern fn parity_start_ios(output: *mut *mut c_void, args: *const c_char) -> c_int {
	panic::catch_unwind(|| {
		*output = ptr::null_mut();
		let argument_string = CStr::from_ptr(args).to_string_lossy().into_owned();
		let arguments: Vec<&str> = argument_string.split(' ').collect();

		let config = {
			parity_ethereum::Configuration::parse_cli(&arguments).unwrap_or_else(|e| e.exit())
		};

		let on_client_restart_cb = |_ : String| {};
		let action = match parity_ethereum::start(config, on_client_restart_cb, || {}) {
			Ok(action) => action,
			Err(msg) => {
				println!("{}", msg);
				return 1
			}
		};

		match action {
			parity_ethereum::ExecutionAction::Instant(Some(s)) => { println!("{}", s); 0 },
			parity_ethereum::ExecutionAction::Instant(None) => 0,
			parity_ethereum::ExecutionAction::Running(client) => {
				let pointer = Box::into_raw(Box::<parity_ethereum::RunningClient>::new(client)) as *mut c_void;
				*output = pointer;
				0
			}
		}
	}).unwrap_or(1)
}

#[no_mangle]
pub unsafe extern fn parity_rpc_ios_query(client: *mut c_void, query: *const c_char, reply_bytes: *mut *mut c_char, reply_length: *mut usize)  -> c_int {
	panic::catch_unwind(|| {

		if client.is_null() || query.is_null() {
			return 2;
		}

		let local_client: &mut parity_ethereum::RunningClient = &mut *(client as *mut parity_ethereum::RunningClient);
		let query = CStr::from_ptr(query).to_string_lossy().into_owned();

		if let Some(output) = local_client.rpc_query_sync(&query) {
			let output_bytes = output.as_bytes();
			let output_length = output_bytes.len();
			let c_output = CString::new(output_bytes).unwrap();
			let output_pointer = c_output.into_raw();
			*reply_bytes = output_pointer as *mut c_char;
			*reply_length = output_length;
			0
		} else {
			1
		}
	}).unwrap_or(1)
}

#[no_mangle]
pub unsafe extern fn parity_rpc_ios_release(reply: *mut c_char) {
	if reply.is_null() { return }
	CString::from_raw(reply);
}

#[no_mangle]
pub unsafe extern fn parity_destroy(client: *mut c_void) {
	let _ = panic::catch_unwind(|| {
		let client = Box::from_raw(client as *mut parity_ethereum::RunningClient);
		client.shutdown();
	});
}

#[no_mangle]
pub unsafe extern fn parity_set_panic_hook(owner: *mut c_void, callback: LoggingCallback) {
	let foreign_callback_object = ForeginCallbackObject { owner: owner, callback: callback };
	panic_hook::set_with(move |panic_msg| {
		foreign_callback_object.call_with(panic_msg);
	});
}
