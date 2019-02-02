//
//  Ethash.swift
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 26/01/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

import Foundation

struct Ethash {

    // +/- 20 epoch cache
    private let rounds = 10 // 30000
    private let blockNumber: UInt64 = 486382

    private let tests = EthashTests()

    private let lastCacheNode: ethash_node = {
        var node = ethash_node(bytes: (
            13, 117, 10, 189, 65, 30, 132, 78, 179, 242, 149, 203, 147, 147, 115, 104,
            35, 100, 135, 124, 56, 196, 222, 166, 210, 199, 31, 213, 128, 182, 249, 222,
            107, 62, 86, 108, 91, 152, 26, 167, 34, 189, 231, 248, 63, 66, 31, 13,
            12, 228, 207, 219, 187, 186, 250, 59, 83, 131, 187, 38, 73, 34, 99, 101))
        return node
    }()
    private let hash: ethash_h256 = {
        var hash = ethash_h256()
        hash.b = (
            0xf5, 0x7e, 0x6f, 0x3a, 0xcf, 0xc0, 0xdd, 0x4b, 0x5b, 0xf2, 0xbe, 0xe4, 0x0a, 0xb3, 0x35, 0x8a,
            0xa6, 0x87, 0x73, 0xa8, 0xd0, 0x9f, 0x5e, 0x59, 0x5e, 0xab, 0x55, 0x94, 0x05, 0x52, 0x7d, 0x72)
        return hash
    }()
    private let mix_hash: ethash_h256 = {
        var mix_hash = ethash_h256()
        mix_hash.b = (
            0x1f, 0xff, 0x04, 0xce, 0xc9, 0x41, 0x73, 0xfd, 0x59, 0x1e, 0x3d, 0x89, 0x60, 0xce, 0x6b, 0xdf,
            0x8b, 0x19, 0x71, 0x04, 0x8c, 0x71, 0xff, 0x93, 0x7b, 0xb2, 0xd3, 0x2a, 0x64, 0x31, 0xab, 0x6d)
        return mix_hash
    }()
    private let boundary: ethash_h256 = {
        var boundary = ethash_h256()
        boundary.b = (
            0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x3e, 0x9b, 0x6c, 0x69, 0xbc, 0x2c, 0xe2, 0xa2, 0x4a, 0x8e,
            0x95, 0x69, 0xef, 0xc7, 0xd7, 0x1b, 0x33, 0x35, 0xdf, 0x36, 0x8c, 0x9a, 0xe9, 0x7e, 0x53, 0x84)
        return boundary
    }()
    private let nonce: UInt64 = 0xd7b3ac70a301a249

    init() {
    }

    func testCPU() {
        let epoch = ethash_get_epoch_number(blockNumber)
        let cacheSize = ethash_get_cachesize(blockNumber)
        let cacheElements = ethash_get_cache_node_number(blockNumber)
        let elementSize = Int(cacheSize) / Int(cacheElements)
        var epochSeed = ethash_get_seedhash(blockNumber)
        print("block number: \(blockNumber)")
        print("epoch: \(epoch)")
        print("cache elements: \(cacheElements)")
        print("cache size: \(cacheSize)")
        print("element size: \(elementSize) bytes")
        print("epoch seed: \(epochSeed)")

        let nodeCachePointer = UnsafeMutablePointer<ethash_node_t>.allocate(capacity: Int(cacheElements))
        let start = Date()
        let success = ethash_compute_cache_nodes(nodeCachePointer,
                                                 cacheSize,
                                                 &epochSeed)
        let cacheArray = Array(UnsafeBufferPointer(start: nodeCachePointer, count: Int(cacheElements)))
        let end = Date()
        if success {
            print("Cache generation success")
            if let lastNode = cacheArray.last,
                lastNode == lastCacheNode {
                print("OK: last cache node correct")
            } else {
                print("ERR: last cache node incorrect!")
            }
        } else {
            print("Cache generation error")
        }
        let numberOfSeconds = end.timeIntervalSince(start)
        print("generating DAG cache took \(numberOfSeconds) seconds")

        let rawLight = ethash_light_new_with_cache(blockNumber,
                                                nodeCachePointer,
                                                cacheSize)
        guard let light = rawLight else {
            print("Failed to initialize llight structure")
            return
        }

        print("Starting Ethash")
        let fullSize = ethash_get_datasize(blockNumber)
        print("ETHASH block number is: \(light.pointee.block_number)")
        print("ETHASH cache size is: \(light.pointee.cache_size)")
        print("ETHASH full size is: \(fullSize)")
        print("ETHASH hash is: \(hash)")
        print("ETHASH nonce is: \(nonce)")
        let returnPointer = UnsafeMutablePointer<ethash_return_value_t>.allocate(capacity: 1)
        let result = ethash_hash(returnPointer,
                                 nil,
                                 light,
                                 fullSize,
                                 hash,
                                 nonce)

        DispatchQueue.global(qos: .userInitiated).async { [rounds, hash, nonce] in
            var result = ethash_return_value_t()

            let ethashStart = Date()
            for _ in 1...rounds {
                result = ethash_light_compute(light,
                                              hash,
                                              nonce)
            }
            let ethashEnd = Date()

            let ethashNumberOfSeconds = ethashEnd.timeIntervalSince(ethashStart)

            DispatchQueue.main.async {
                self.endTest(with: result, duration: ethashNumberOfSeconds)
            }
        }
    }

    func endTest(with result: ethash_return_value_t, duration: TimeInterval) {
        if result.success {
            print("compute result: success")
            let m1 = self.mix_hash
            let check1 = result.mix_hash == self.mix_hash
            if check1 {
                print("OK: mix hash correct")
            } else {
                print("\(m1.b.0)")
                print("\(result.mix_hash.b.0)")
                print("ERR: mix hash incorrect!")
            }
            if result.result == self.boundary {
                print("OK: boundary correct")
            } else {
                print("ERR: boundary incorrect!")
            }
        } else {
            print("compute result: error")
        }

        print("computing \(rounds) Ethash took \(duration) seconds")
        print("computing speed \(Double(rounds)/duration) hashes / sec")
        print("End")
    }

    func testUnits() {
        tests.testUnits()
    }

    private func dumpDAGCahce(cache: [ethash_node_t]) {
        guard let first = cache.first,
        let last = cache.last else {
            return
        }
        print(first.bytes)
        print(last.bytes)
    }
}

extension ethash_h256: Equatable {
    public static func == (lhs: ethash_h256, rhs: ethash_h256) -> Bool {
        return (
            lhs.b.0 == rhs.b.0 &&
            lhs.b.1 == rhs.b.1 &&
            lhs.b.2 == rhs.b.2 &&
            lhs.b.3 == rhs.b.3 &&
            lhs.b.4 == rhs.b.4 &&
            lhs.b.5 == rhs.b.5 &&
            lhs.b.6 == rhs.b.6 &&
            lhs.b.7 == rhs.b.7 &&
            lhs.b.8 == rhs.b.8 &&
            lhs.b.9 == rhs.b.9 &&
            lhs.b.10 == rhs.b.10 &&
            lhs.b.11 == rhs.b.11 &&
            lhs.b.12 == rhs.b.12 &&
            lhs.b.13 == rhs.b.13 &&
            lhs.b.14 == rhs.b.14 &&
            lhs.b.15 == rhs.b.15 &&
            lhs.b.16 == rhs.b.16 &&
            lhs.b.17 == rhs.b.17 &&
            lhs.b.18 == rhs.b.18 &&
            lhs.b.19 == rhs.b.19 &&
            lhs.b.20 == rhs.b.20 &&
            lhs.b.21 == rhs.b.21 &&
            lhs.b.22 == rhs.b.22 &&
            lhs.b.23 == rhs.b.23 &&
            lhs.b.24 == rhs.b.24 &&
            lhs.b.25 == rhs.b.25 &&
            lhs.b.26 == rhs.b.26 &&
            lhs.b.27 == rhs.b.27 &&
            lhs.b.28 == rhs.b.28 &&
            lhs.b.29 == rhs.b.29 &&
            lhs.b.30 == rhs.b.30 &&
            lhs.b.31 == rhs.b.31
        )
    }
}
extension ethash_node: Equatable {
    public static func == (lhs: ethash_node, rhs: ethash_node) -> Bool {
        return (
            lhs.double_words.0 == rhs.double_words.0 &&
            lhs.double_words.1 == rhs.double_words.1 &&
            lhs.double_words.2 == rhs.double_words.2 &&
            lhs.double_words.3 == rhs.double_words.3 &&
            lhs.double_words.4 == rhs.double_words.4 &&
            lhs.double_words.5 == rhs.double_words.5 &&
            lhs.double_words.6 == rhs.double_words.6 &&
            lhs.double_words.7 == rhs.double_words.7
        )
    }
}
