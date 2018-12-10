Patched dependencies
================

In order to build an experimental build of parity library for iOS, we need to patch some of the dependencies of Parity's ethereum client.

This directory contains patched versions of libraries, while this file contains descriptions what was patched. 


### Patched heapsize

In file `/heapsize-0.4.2/src/lib.rs`

At a line 44 originaly you was be able to find:

```
#[cfg_attr(any(prefixed_jemalloc, target_os = "macos", target_os = "ios", target_os = "android"), link_name = "je_malloc_usable_size")]
```

This line forces `malloc_usable_size` to be linked externally as `je_malloc_usable_size`. This works only if we're compiling an executable as Rust comes with jemalloc.
However, if we compile into the static lib Rust links against the system allocator and above will not work on systems that do not have jemalloc.
Unfortunately, iOS is one of such systems.

In order to patch heapsize and use on Mac's or iOS's malloc we need to change line 44 to:

```
#[cfg_attr(any(target_os = "macos", target_os = "ios"), link_name = "malloc_size")]
```  

### Patched Rust-Crypto
In file `/rust-crypto-0.2.36/src/util_helpers.c`  

There at the line 104 I inserted following snippet:

```
#ifdef __aarch64__
uint32_t rust_crypto_util_fixed_time_eq_asm(uint8_t* lhsp, uint8_t* rhsp, size_t count) {
if (count == 0) {
return 1;
}
uint8_t result = 0;
asm(
" \
1: \
\
ldrb w4, [%1]; \
ldrb w5, [%2]; \
eor w4, w4, w5; \
orr %w0, %w0, w4; \
\
add %w1, %w1, #1; \
add %w2, %w2, #1; \
subs %w3, %w3, #1; \
bne 1b; \
"
: "+&r" (result), "+&r" (lhsp), "+&r" (rhsp), "+&r" (count) // all input and output
: // input
: "w4", "w5", "cc" // clobbers
);

return result;
}
#endif
```

This snippet adds support for ARM8 architecture and comes from [this PR](https://github.com/DaGenix/rust-crypto/pull/384)

### Patched parity-rocksdb-sys
In the file: `~/.cargo/registry/src/github.com/parity-rocksdb-sys-0.5.3/build.rs`

Went to the line 25 and inserted following snippet:

```
if target_os.contains("ios") {
cfg.cxxflag("-fno-rtti");
cfg.cxxflag("-DIOS_CROSS_COMPILE");
}
```

This adds necessary flags in order to cross-compile this lib.

Please note that this is not an ideal solution, nor even preferable one just first that worked. RocksDB should be compiled in "LITE" mode on iOS
as described [in INSTALL.md](https://github.com/facebook/rocksdb/blob/master/INSTALL.md) however, this currently would not work
as `C` interface is not included with the LITE build. See "future work" section for more details.

### Patched kvdb-rocksdb
In the file: `~/.cargo/registry/src/github.com/kvdb-rocksdb-0.1.4/src/lib.rs`

Went to the line 226 where `fn col_config(config: &DatabaseConfig, block_opts: &BlockBasedOptions) -> io::Result<Options>`
function starts and replaced it with the following: 
```
fn col_config(config: &DatabaseConfig, block_opts: &BlockBasedOptions) -> io::Result<Options> {
let mut opts = Options::new();
#[cfg(target_os = "ios")] {
Ok(opts)
}

#[cfg(not(target_os = "ios"))] {
opts.set_parsed_options("level_compaction_dynamic_level_bytes=true").map_err(other_io_err)?;

opts.set_block_based_table_factory(block_opts);

opts.set_parsed_options(
&format!("block_based_table_factory={{{};{}}}",
"cache_index_and_filter_blocks=true",
"pin_l0_filter_and_index_blocks_in_cache=true")).map_err(other_io_err)?;

opts.optimize_level_style_compaction(config.memory_budget_per_col() as i32);
opts.set_target_file_size_base(config.compaction.initial_file_size);

opts.set_parsed_options("compression_per_level=").map_err(other_io_err)?;

Ok(opts)
}
}
```

Then went to line 284 where you  have `impl Database` and replaced the following fragment:
```
impl Database {
const CORRUPTION_FILE_NAME: &'static str = "CORRUPTED";

/// Open database with default settings.
pub fn open_default(path: &str) -> io::Result<Database> {
Database::open(&DatabaseConfig::default(), path)
}

/// Open database file. Creates if it does not exist.
pub fn open(config: &DatabaseConfig, path: &str) -> io::Result<Database> {
let mut opts = Options::new();

if let Some(rate_limit) = config.compaction.write_rate_limit {
opts.set_parsed_options(&format!("rate_limiter_bytes_per_sec={}", rate_limit)).map_err(other_io_err)?;
}
opts.set_use_fsync(false);
opts.create_if_missing(true);
opts.set_max_open_files(config.max_open_files);
opts.set_parsed_options("keep_log_file_num=1").map_err(other_io_err)?;
opts.set_parsed_options("bytes_per_sync=1048576").map_err(other_io_err)?;
opts.set_db_write_buffer_size(config.memory_budget_per_col() / 2);
opts.increase_parallelism(cmp::max(1, ::num_cpus::get() as i32 / 2));

let mut block_opts = BlockBasedOptions::new();

{
block_opts.set_block_size(config.compaction.block_size);
let cache_size = cmp::max(8, config.memory_budget() / 3);
let cache = Cache::new(cache_size);
block_opts.set_cache(cache);
}

// attempt database repair if it has been previously marked as corrupted
let db_corrupted = Path::new(path).join(Database::CORRUPTION_FILE_NAME);
if db_corrupted.exists() {
warn!("DB has been previously marked as corrupted, attempting repair");
DB::repair(&opts, path).map_err(other_io_err)?;
fs::remove_file(db_corrupted)?;
}
```

with:

```
impl Database {
const CORRUPTION_FILE_NAME: &'static str = "CORRUPTED";

/// Open database with default settings.
pub fn open_default(path: &str) -> io::Result<Database> {
Database::open(&DatabaseConfig::default(), path)
}

/// Open database file. Creates if it does not exist.
pub fn open(config: &DatabaseConfig, path: &str) -> io::Result<Database> {
let mut opts = Options::new();

#[cfg(not(target_os = "ios"))] {
if let Some(rate_limit) = config.compaction.write_rate_limit {
opts.set_parsed_options(&format!("rate_limiter_bytes_per_sec={}", rate_limit)).map_err(other_io_err)?;
}
opts.set_use_fsync(false);
opts.set_max_open_files(config.max_open_files);
opts.set_parsed_options("keep_log_file_num=1").map_err(other_io_err)?;
opts.set_parsed_options("bytes_per_sync=1048576").map_err(other_io_err)?;
opts.set_db_write_buffer_size(config.memory_budget_per_col() / 2);
opts.increase_parallelism(cmp::max(1, ::num_cpus::get() as i32 / 2));
}

opts.create_if_missing(true);

let mut block_opts = BlockBasedOptions::new();
#[cfg(not(target_os = "ios"))]
{
block_opts.set_block_size(config.compaction.block_size);
let cache_size = cmp::max(8, config.memory_budget() / 3);
let cache = Cache::new(cache_size);
block_opts.set_cache(cache);
}

// attempt database repair if it has been previously marked as corrupted
let db_corrupted = Path::new(path).join(Database::CORRUPTION_FILE_NAME);
if db_corrupted.exists() {
warn!("DB has been previously marked as corrupted, attempting repair");
#[cfg(not(target_os = "ios"))]
DB::repair(&opts, path).map_err(other_io_err)?;
fs::remove_file(db_corrupted)?;
}
```

Lastly went to the line 372 and replaced following snippet:
```
Err(ref s) if is_corrupted(s) => {
warn!("DB corrupted: {}, attempting repair", s);
DB::repair(&opts, path).map_err(other_io_err)?;
``` 

with:
```
Err(ref s) if is_corrupted(s) => {
warn!("DB corrupted: {}, attempting repair", s);
#[cfg(not(target_os = "ios"))]
DB::repair(&opts, path).map_err(other_io_err)?;
``` 

Because RocksDB is built in a "full" mode it contains features that do not work iOS (or in any LITE build)
So I have disabled all custom configuration and explicitly unsupported functions in order to make a build that works,


