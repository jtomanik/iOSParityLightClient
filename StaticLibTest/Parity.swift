//
//  Parity.swift
//  StaticLibTest
//
//  Created by Jakub Tomanik on 18/07/2018.
//  Copyright © 2018 Jakub Tomanik. All rights reserved.
//

import Foundation

func onRestart(_: UnsafeMutableRawPointer?, _: UnsafePointer<Int8>?, _: Int) -> Void {}

typealias LibraryCallback = (String) -> ()

final class Parity {

    static let shared = Parity()

    var isParityRunning: Bool {
        return parityClientPointer != nil
    }

    var parityLaunchArguments = "--light --no-ipc --no-color --no-ws --no-jsonrpc --num-verifiers=2"
    var logCallback: LibraryCallback?
    var responseCallback: LibraryCallback?

    private var parityClientPointer: UnsafeMutableRawPointer? = nil
    private var parityResponseDataPointer: UnsafeMutablePointer<Int8>? = nil
    private var parityResponseDataLength: UInt = 0 {
        didSet {
            releaseQueryResponse()
        }
    }
    private var parityResponseResultCode: Int32 = 0

    private init(){}

    deinit {
        if let client = parityClientPointer {
            parity_destroy(client)
        }
    }
    
    func start() {
        let documentsDirectory = getDirectoryPath()
        print("Docs directory \(documentsDirectory)")
        guard let chainspecPath = Bundle.main.path(forResource: "custom_foundation", ofType: "json") else {
            return
        }
        print("Chain spec directory \(chainspecPath)")
        let args = "parity \(parityLaunchArguments) --base-path=\(documentsDirectory) --chain=\(chainspecPath)"

        let closure: LoggingCallback = { owner, pointer, length in
            guard let owner = owner else { return }

            let parity = Unmanaged<Parity>.fromOpaque(owner).takeUnretainedValue()
            parity.loggingCallback(pointer, length)
        }

        let selfPointer = Unmanaged.passUnretained(self).toOpaque()
        parity_logger_start(selfPointer, closure)
        parity_set_panic_hook(selfPointer, closure)
        let result = parity_start_ios(&parityClientPointer, args)
        // check if result is 0
    }

    func stop() {
        guard let client = parityClientPointer else {
            parityClientPointer = nil
            return
        }
        parity_destroy(client)
        parityClientPointer = nil
    }

    func rpc(query: String) {
        guard let client = parityClientPointer else {
            return
        }

        parityResponseResultCode = parity_rpc_ios_query(client,
                                          query,
                                          &parityResponseDataPointer,
                                          &parityResponseDataLength)
    }

    func loggingCallback(_ replyPointer: UnsafePointer<Int8>?, _ replyLength: UInt) {
        guard let pointer = replyPointer else {
            return
        }
        let data = Data(bytes: pointer, count: Int(replyLength))
        if let string = String(data: data, encoding: .utf8) {
            print(string)
            logCallback?(string)
        }
    }

    private func releaseQueryResponse() {
        guard let dataPointer = parityResponseDataPointer,
            parityResponseDataLength > 0 else {
                parityResponseDataPointer = nil
                parityResponseDataLength = 0
                return
        }
        let data = Data(bytes: dataPointer, count: Int(parityResponseDataLength))
        if let string = String(data: data, encoding: .utf8) {
            print(string)
            responseCallback?(string)
        }
        parity_rpc_ios_release(dataPointer)
    }

    private func getDirectoryPath() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentsDirectory = paths[0]
        return documentsDirectory
    }
}
