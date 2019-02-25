// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "CmdTestCpp",
    products: [
        .executable(name: "test-cpp", targets: ["CmdTestCpp"]),
        .library(
            name: "EthashSwift",
            targets: ["EthashSwift"]),
        .library(
            name: "EthashLibCPP",
            targets: ["EthashLibCPP"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CmdTestCpp",
            dependencies: ["EthashSwift"],
            path: "./targets/CmdTestCpp"),
        .target(
            name: "EthashSwift",
            dependencies: ["EthashLibCPP"],
            path: "./Ethash",
            exclude: ["Ethash.swift",
                      "EthashGPU.swift",
                      "EthashCPU.swift"]),
//        .target(
//            name: "EthashLib",
//            path: "./libethash/Core",
//            //            exclude: "",
//            publicHeadersPath: "."),
        .target(
            name: "EthashLibCPP",
            path: "./libethash/CPP")
//            exclude: "",
//            publicHeadersPath: ".")
    ]
)
