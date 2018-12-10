# Experimental iOS Parity Light Client

Note: This guide was tested with:

```
$ rustc --version
rustc 1.30.0 (da5f414c2 2018-10-24)
```
```
$ xcodebuild -version
Xcode 10.0
Build version 10A254a
```

# Installing build tools
This project assumes you have several tools installed before you can build it. Those tools are:

1. Xcode 10.0
If you don't have it go to [developer.apple.com](https://developer.apple.com/xcode/) and follow instructions to install.

2. Homebrew
I use Homebrew to manage additional developer tools.
If you don't have it go to [brew.sh](https://brew.sh/) and follow instructions to install.
Alternatively plese use following command to install it:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

3. Marathon
I use [Marathon](https://github.com/JohnSundell/Marathon) for build script.
Plese use following commands to install it:

```
git clone https://github.com/JohnSundell/Marathon.git
$ cd Marathon
$ make
```

4. Rust
We will be using `rustup` for managing Rust toolchain. If you already have rustup installed, you can skip this step. 
Rustup installs Rust from the official release channels and enables you to easily switch between different release versions [more info](https://www.rust-lang.org/tools/install).
Plese use following command to install it:

```
curl https://sh.rustup.rs -sSf | sh
```

## Setting up Xcode and iOS toolchain
Before you continue make sure you have Xcode build tools. If you already have the build tools installed and they are up to date, you can skip this step.
Otherwise, execute the following command in the terminal

```
xcode-select --install
```

## Setting up Rust toolchain
Before we can make cross platform builds we need to add the iOS architectures to `rustup`.
In your terminal type:

```
rustup target add aarch64-apple-ios armv7-apple-ios armv7s-apple-ios x86_64-apple-ios i386-apple-ios
```

When you installed Rust, it also installs a  `cargo` tool, which is a package manager for Rust language. We will use cargo to install a `cargo-lipo`. 
This is a cargo subcommand which automatically creates an universal library for use with iOS projects. 
Without this, cross-compiling Rust code to work on iOS is infinitely harder.

```
cargo install cargo-lipo
```


# Building this project
All dependencies will be automatically build and copied using `main.swift` script. From the root folder of this repo ( one that contains this readme ) in your terminal type:
```
./make.swift
```

Now go for a walk or just make yourself a coffee and fetch your favorite book. This process can take around an hour on a decent MacBook Pro.

Note: Make sure that `main.swift` has right permissions. If needed type `chmod a+x main.swift`

