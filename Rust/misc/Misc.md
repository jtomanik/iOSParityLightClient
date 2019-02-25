# Building parity app 

`cargo build --features memory_profiling`

### Providing custom chainspec with 

`parity --light export-hardcoded-sync > hardcodedSync.txt`

## Create 64bit library
Due to different page sizes on 64 bit and 32 bit iPhones and jemalloc configuration when compiling library with jemalloc support we can only target 64 bit platforms.

Before proceeding make sure that yopu are using `nightly` environment.

In order to create universal 64 bit library you need to run following commands from `parity-clib` directory:

`cargo build --lib --target x86_64-apple-ios`

`cargo build --lib --target aarch64-apple-ios`

`lipo -create ../target/aarch64-apple-ios/debug/libparity.a ../target/x86_64-apple-ios/debug/libparity.a -output ../target/debug/libparity.a`

If you need to replace one of the libraries that make universal library you can modify this command:

`lipo -replace arm64  aarch64-apple-ios/release/libparity.a universal/release/libparity.a -output universal/release/libparity2.a`
 

# Different memmory allocators for libparity

## 1. system's Malloc

1. Make sure that `heapsize` is patched.
2. Make sure `rust-crypto` is patched
2. create universal library with following command: `cargo lipo --features malloc --release
`

## 2. Rust's jemalloc

1. Make sure that `heapsize` is **not** patched.  
2. Uncomment following lines from `parity-clib/src.lib.rs` 
```
#![feature(alloc_jemalloc)]
#![crate_type = "staticlib"]
```
3. create universal library with following command: `cargo lipo --features jemalloc --release`

# Misc stuff from bash history

`cargo install cbindgen`

`cbindgen -o test.h`

`parity --light --no-ipc --no-color --no-ws --no-jsonrpc --base-path=$documentsDirectory --chain=$chainspecPath`

`curl --data '{"method":"eth_syncing","params":[],"id":1,"jsonrpc":"2.0"}' -H "Content-Type: application/json" -X POST localhost:8545`

`enode://2b59afa133c69e1fb93e4a88efe56357e1cc073f971951a6576a8d50df0f38a79d244346c49f09d32cbc70d40107c7ba93a6460a70d9b189cd6d0ae88efac072@35.242.227.201:30303`

`#crate-type = ["staticlib"]`

`memory_profiling`

`nm libparity.a | grep " U " | grep usable`

`cargo build --features memory_profiling`

`./target/debug/parity --light db kill`

`parity --light --no-ipc --no-color --no-ws --chain=/Users/jakubtomanik/github/parity/parity-clib/custom_foundation.json`

`https://gist.github.com/Wizermil/1b8144e4f67511c1f7d6`