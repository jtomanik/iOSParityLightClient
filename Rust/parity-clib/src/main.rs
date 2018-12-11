extern crate parity;

use parity::parity_start_ios;
use parity::parity_rpc_ios_query;
use parity::parity_rpc_ios_release;
use std::ffi::{CString, CStr};
use std::io;
use std::os::raw::{c_char, c_void};
use std::slice;
use std::env;
use std::{ptr};

#[cfg(feature = "malloc")]
use std::alloc::System;

#[cfg(feature = "malloc")]
#[global_allocator]
static A: System = System;

extern "C"  fn logger_callback(owner: *mut c_void, message: *const c_char, size: usize) {
	unsafe {
		let message_string = CStr::from_ptr(message).to_string_lossy().into_owned();
		println!("LOL: {}", &message_string)
	}
}

fn main() {

	let mut client = ptr::null_mut();
	let mut path = env::current_dir().unwrap();
	path.pop();
	path.push("misc/custom_foundation.json");
	println!("The current directory is {}", path.display());
	let chainspec_path = path.display().to_string();
	let args_string = format!("parity --light --no-ipc --no-color --chain={}", chainspec_path);
	let args = CString::new(args_string).unwrap();

	let mut srcunit = String::new();
	let mut switch = true;
	let dummy = ptr::null_mut();

	unsafe {
		let ret1 = parity_start_ios(&mut client,
									args.as_ptr(),
							dummy,
								 Some(logger_callback));

		while switch {
			println!("Quit?");
			io::stdin().read_line(&mut srcunit).expect(
				"failed to read src unit",
			);

			if srcunit.trim() == "Q" {
				switch = false;
			}
			if srcunit.trim() == "a" {
//				let mut response: *mut c_char = ptr::null_mut();
//				let query3 = CString::new("{\"method\":\"eth_syncing\",\"params\":[],\"id\":1,\"jsonrpc\":\"2.0\"}").unwrap();
//				let ret3 = parity_rpc_ios_query(client, query3.as_ptr(), &mut response);
//				let response_string = CStr::from_ptr(response).to_string_lossy().into_owned();
//				parity_rpc_ios_release(response);
//				println!("returned {}", response_string);
			}
			if srcunit.trim() == "b" {
//				let mut response: *mut c_char = ptr::null_mut();
				let query3 = CString::new("{\"method\":\"web3_clientVersion\",\"params\":[],\"id\":1,\"jsonrpc\":\"2.0\"}").unwrap();
//				let ret3 = parity_rpc_ios_query(client, query3.as_ptr(), &mut response);
				let mut response_pointer: *mut c_char = ptr::null_mut();
				let mut response_length: usize = 0;
				let ret3 = parity_rpc_ios_query(client, query3.as_ptr(), &mut response_pointer, &mut response_length);

				if ret3 == 0 {
					if response_length > 0 {
//						let response_string = CStr::from_ptr(response_pointer).to_string_lossy().into_owned();
						let string_bytes = slice::from_raw_parts(response_pointer as *mut u8, response_length);
						let c_string = CString::new(string_bytes).unwrap().to_owned();
						let string = c_string.to_str().to_owned().unwrap();
						println!("returned :{}", string);
					}

					parity_rpc_ios_release(response_pointer);
				}
			}
			srcunit = "".to_string();
		}
	}

	println!("bye bye");
}
