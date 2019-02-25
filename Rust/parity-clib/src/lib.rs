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

extern crate paritylib_light;
extern crate panic_hook;
extern crate ethcore_logger;

#[macro_use]
extern crate lazy_static;

mod helpers;
mod logger;

use std::os::raw::{c_char, c_void, c_int};
use std::{panic, ptr, str};
use std::ffi::{CStr};
use helpers::{LoggingCallback, ForeginCallbackObject};
use logger::setup_log;
use paritylib_light::{RunningClient,
					  RunOptionsLight,
					  Cmd,
					  Configuration};

#[cfg(feature = "malloc")]
use std::alloc::System;

#[cfg(feature = "malloc")]
#[global_allocator]
static A: System = System;

#[no_mangle]
pub unsafe extern fn parity_start_ios(output: *mut *mut c_void,
									  args: *const c_char,
									  callback_owner: *mut c_void,
									  callback: LoggingCallback) -> c_int {
	panic::catch_unwind(|| {
		*output = ptr::null_mut();
		let argument_string = CStr::from_ptr(args).to_string_lossy().into_owned();
		let arguments: Vec<&str> = argument_string.split(' ').collect();

		let config = {
			Configuration::parse_cli(&arguments).unwrap_or_else(|e| e.exit())
		};

		let command = config.into_command().unwrap();
		let cmd = match command.cmd {
			Cmd::Run(run_cmd) => Some(run_cmd),
			_ => None
		}.unwrap();

		let options = RunOptionsLight {
			cache_config: cmd.cache_config,
			accounts_config: cmd.acc_conf,
			dirs: cmd.dirs,
			spec: cmd.spec,
			pruning: cmd.pruning,
			pruning_history: cmd.pruning_history,
			pruning_memory: cmd.pruning_memory,
			compaction: cmd.compaction,
			check_seal: cmd.check_seal,
			no_hardcoded_sync: cmd.no_hardcoded_sync,
			gas_price_percentile: cmd.gas_price_percentile,
			poll_lifetime: cmd.poll_lifetime,
			geth_compatibility: cmd.geth_compatibility,
			experimental_rpcs: cmd.experimental_rpcs,
			net_settings: cmd.net_settings,
			verifier_settings: cmd.verifier_settings,
			net_config: cmd.net_conf,
			custom_bootnodes: cmd.custom_bootnodes,
			network_id: cmd.network_id,
			on_demand_response_time_window: cmd.on_demand_response_time_window,
			on_demand_request_backoff_start: cmd.on_demand_request_backoff_start,
			on_demand_request_backoff_max: cmd.on_demand_request_backoff_max,
			on_demand_request_backoff_rounds_max: cmd.on_demand_request_backoff_rounds_max,
			on_demand_request_consecutive_failures: cmd.on_demand_request_consecutive_failures,
		};

		let logger = setup_log(callback_owner, callback) .expect("Logger is initialized only once; qed");

		let on_client_restart_cb = |_ : String| {};
		let client = match paritylib_light::start(options, logger, on_client_restart_cb, || {}) {
			Ok(client) => client,
			Err(msg) => {
				println!("{}", msg);
				return 1
			}
		};

		let pointer = Box::into_raw(Box::<RunningClient>::new(client)) as *mut c_void;
		*output = pointer;
		0
	}).unwrap_or(1)
}

#[no_mangle]
pub unsafe extern fn parity_rpc_ios_query(client: *mut c_void,
										  query: *const c_char,
										  callback_owner: *mut c_void,
										  callback: LoggingCallback)  -> c_int {
	panic::catch_unwind(|| {

		if client.is_null() || query.is_null() {
			return 2;
		}

		let local_client: &mut RunningClient = &mut *(client as *mut RunningClient);
		let query = CStr::from_ptr(query).to_string_lossy().into_owned();

		if let Some(output) = local_client.rpc_query_sync(&query) {
			let foreign_callback_object = ForeginCallbackObject { owner: callback_owner, callback: callback };
			foreign_callback_object.call_with(&output);
			0
		} else {
			1
		}
	}).unwrap_or(1)
}

#[no_mangle]
pub unsafe extern fn parity_destroy(client: *mut c_void) {
	let _ = panic::catch_unwind(|| {
		let client = Box::from_raw(client as *mut RunningClient);
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
