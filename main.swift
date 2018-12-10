#!/usr/bin/env marathon run

import Foundation
import ShellOut
import Files

let cLibPath = try Folder.current.subfolder(atPath: "Rust/parity-clib")
let buildOutputPath  = try cLibPath.subfolder(atPath: "target/universal/release")
let projectLibPath = try Folder.current.subfolder(atPath: "lib")
let repoMiscPath = try Folder.current.subfolder(atPath: "Rust/misc")

// update rustup targets
try shellOut(to: "rustup",
             arguments: ["target add aarch64-apple-ios armv7-apple-ios armv7s-apple-ios x86_64-apple-ios i386-apple-ios"])

// build the library
try shellOut(to: "cargo",
             arguments: ["lipo --features malloc --release"],
             at: cLibPath.path)

try projectLibPath.empty()

//copy the header file
try cLibPath.file(named: "parity.h").copy(to: projectLibPath)

//copy the library
try buildOutputPath.file(named: "libparity.a").copy(to: projectLibPath)

//copy additional resources
try repoMiscPath.file(named: "custom_foundation.json").copy(to: projectLibPath)

print("Build done")



