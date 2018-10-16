//
//  Parity.swift
//  StaticLibTest
//
//  Created by Jakub Tomanik on 18/07/2018.
//  Copyright © 2018 Jakub Tomanik. All rights reserved.
//

import Foundation

func onRestart(_: UnsafeMutableRawPointer?, _: UnsafePointer<Int8>?, _: Int) -> Void {}

final class Parity {

    static let shared = Parity()

    var parityClientPointer: UnsafeMutableRawPointer? = nil

    private init(){}

    deinit {
        if let client = parityClientPointer {
            parity_destroy(client)
        }
    }
    
    func start() {
        let test = ParityParams()
        let documentsDirectory = getDirectoryPath()
        print("Docs directory \(documentsDirectory)")
        guard let chainspecPath = Bundle.main.path(forResource: "custom_foundation", ofType: "json") else {
            return
        }
        print("Chain spec directory \(chainspecPath)")
        let args = "parity --light --no-ipc --no-color --no-ws --no-jsonrpc --base-path=\(documentsDirectory) --chain=\(chainspecPath)"
        let step2 = parity_start_ios(&parityClientPointer, args)
        print("parity_start returned \(step2)")
        print("returned pointer: \(parityClientPointer)")
    }

    func testRPC() {
        print("Starting ``RPC test...")
        let testPayload = "{\"method\":\"net_peerCount\",\"params\":[],\"id\":1,\"jsonrpc\":\"2.0\"}"
        if let client = parityClientPointer {
            var replyPointer: UnsafeMutablePointer<Int8>? = nil
//            var mutableReplyPointer = UnsafeMutablePointer(mutating: replyPointer)
            let result = parity_rpc_ios_query(client, testPayload, &replyPointer)
            let reply = String(cString: replyPointer!)
            parity_rpc_ios_release(replyPointer)
            print("query result \(reply)Qbus kocha Asiunie}")
        }
    }

    private func getDirectoryPath() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentsDirectory = paths[0]
        return documentsDirectory
    }
}
