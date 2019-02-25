//
//  LogParser.swift
//  StaticLibTest
//
//  Created by Jakub Tomanik on 13/12/2018.
//  Copyright © 2018 Jakub Tomanik. All rights reserved.
//

import Foundation


/**
 Public node URL: enode://9d5e93539c2e4a16aea0482a8938d477f07b648691181bb34c982a0dfd6c1557728a9c2932e730aa7a6d0dce17afb10d4b925a0912cd7bbba659c7de0b56c6fe@10.5.1.121:30303

 7/50 peers   568 bytes cache  0 bytes queue  RPC:  0 conn,    0 req/s,    0 µs

 Syncing #6603141 0xb2a3…4d69    12.9 hdr/s  11642+    0 Qed   8/50 peers    214 KiB cache    9 MiB queue  RPC:  0 conn,    0 req/s,    0 µs

 **/

// Public node URL
// 7/50 peers
// 568 bytes cache
// 0 bytes queue
// RPC:  0 conn,
// 0 req/s,
// 0 µs
// Syncing #6603141 0xb2a3…4d69
// 12.9 hdr/s
// 11642+
// 0 Qed

struct LogParser {

    enum LogComponent {
        case publicNode(url: String)
        case peers(count: Int, max: Int)
        case queue(bytes: Int)
        case cache(bytes: Int)
        case rpc(connections: Int)
        case syncingBlock(number: Int, header: String)
        case headers(perSec: Float)
        case unverifiedQueue(size: Int)
        case verifiedQueue(size: Int)
    }

    private func detectPublicNode(in string: String) -> LogComponent? {
        return nil
    }
}
