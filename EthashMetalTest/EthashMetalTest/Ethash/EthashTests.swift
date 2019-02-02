//
//  EthashTests.swift
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 02/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

import Foundation

struct EthashTests {
    // MARK: Tests

    func testUnits() {
        testKeccak()
        testSeedComputation()
        testCacheGeneration()
        testCalculatingDAGItem()
    }

    private func testKeccak() {
        // SHA3_256
        testEmptyKeccak256()
        testStringKeccak256()

        testEmptyKeccak512()
        testStringKeccak512()
    }

    private func testEmptyKeccak256() {
        let inputString = ""
        let data = inputString.data(using: String.Encoding.ascii)!

        var expected = ethash_h256_t()
        expected.b = (
            0xc5, 0xd2, 0x46, 0x01, 0x86, 0xf7, 0x23, 0x3c, 0x92, 0x7e, 0x7d, 0xb2, 0xdc, 0xc7, 0x03, 0xc0,
            0xe5, 0x00, 0xb6, 0x53, 0xca, 0x82, 0x27, 0x3b, 0x7b, 0xfa, 0xd8, 0x04, 0x5d, 0x85, 0xa4, 0x70)

        let result = data.withUnsafeBytes { (pointer) -> ethash_h256_t in
            ethash_keccak_256(pointer, data.count)
        }

        if result == expected {
            print("TEST: keccak 256 empty string ok")
        } else {
            print(result.b)
            print("ERROR: generating keccak 256 failed")
        }
    }

    private func testStringKeccak256() {
        let inputString = "abc"
        let data = inputString.data(using: String.Encoding.ascii)!

        var expected = ethash_h256_t()
        expected.b = (
            0x4e, 0x03, 0x65, 0x7a, 0xea, 0x45, 0xa9, 0x4f, 0xc7, 0xd4, 0x7b, 0xa8, 0x26, 0xc8, 0xd6, 0x67,
            0xc0, 0xd1, 0xe6, 0xe3, 0x3a, 0x64, 0xa0, 0x36, 0xec, 0x44, 0xf5, 0x8f, 0xa1, 0x2d, 0x6c, 0x45)

        let result = data.withUnsafeBytes { (pointer) -> ethash_h256_t in
            ethash_keccak_256(pointer, data.count)
        }

        if result == expected {
            print("TEST: keccak 256 input string ok")
        } else {
            print(result.b)
            print("ERROR: generating keccak 256 failed")
        }
    }

    private func testEmptyKeccak512() {
        let inputString = ""
        let data = inputString.data(using: String.Encoding.ascii)!

        var expected = ethash_node()
        expected.bytes = (
            0x0e, 0xab, 0x42, 0xde, 0x4c, 0x3c, 0xeb, 0x92, 0x35, 0xfc, 0x91, 0xac, 0xff, 0xe7, 0x46, 0xb2,
            0x9c, 0x29, 0xa8, 0xc3, 0x66, 0xb7, 0xc6, 0x0e, 0x4e, 0x67, 0xc4, 0x66, 0xf3, 0x6a, 0x43, 0x04,
            0xc0, 0x0f, 0xa9, 0xca, 0xf9, 0xd8, 0x79, 0x76, 0xba, 0x46, 0x9b, 0xcb, 0xe0, 0x67, 0x13, 0xb4,
            0x35, 0xf0, 0x91, 0xef, 0x27, 0x69, 0xfb, 0x16, 0x0c, 0xda, 0xb3, 0x3d, 0x36, 0x70, 0x68, 0x0e)

        let result = data.withUnsafeBytes { (pointer) -> ethash_node in
            ethash_keccak_512(pointer, data.count)
        }

        if result == expected {
            print("TEST: keccak 512 empty string ok")
        } else {
            print(result.bytes)
            print("ERROR: generating keccak 512 failed")
        }
    }

    private func testStringKeccak512() {
        let inputString = "abc"
        let data = inputString.data(using: String.Encoding.ascii)!

        var expected = ethash_node()
        expected.bytes = (
            0x18, 0x58, 0x7d, 0xc2, 0xea, 0x10, 0x6b, 0x9a, 0x15, 0x63, 0xe3, 0x2b, 0x33, 0x12, 0x42, 0x1c,
            0xa1, 0x64, 0xc7, 0xf1, 0xf0, 0x7b, 0xc9, 0x22, 0xa9, 0xc8, 0x3d, 0x77, 0xce, 0xa3, 0xa1, 0xe5,
            0xd0, 0xc6, 0x99, 0x10, 0x73, 0x90, 0x25, 0x37, 0x2d, 0xc1, 0x4a, 0xc9, 0x64, 0x26, 0x29, 0x37,
            0x95, 0x40, 0xc1, 0x7e, 0x2a, 0x65, 0xb1, 0x9d, 0x77, 0xaa, 0x51, 0x1a, 0x9d, 0x00, 0xbb, 0x96)

        let result = data.withUnsafeBytes { (pointer) -> ethash_node in
            ethash_keccak_512(pointer, data.count)
        }

        if result == expected {
            print("TEST: keccak 512 input string ok")
        } else {
            print(result.bytes)
            print("ERROR: generating keccak 512 failed")
        }
    }

    private func testSeedComputation() {
        testSeedForBlockZero()
        testSeedForRefferenceBlock()
        testSeedComputationAfterOlder()
        testSeedComputationAfterNewer()
    }

    private func testSeedForBlockZero() {
        let blockNumber: ethash_uint64_t = 0
        var expected = ethash_h256_t()
        expected.b = (
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
        let result = ethash_get_seedhash(blockNumber)
        if result == expected {
            print("TEST: Seed hash for block \(blockNumber) correct")
        } else {
            print(result.b)
            print("ERROR: generating seed hash failed! ")
        }
    }

    private func testSeedForRefferenceBlock() {
        let blockNumber: ethash_uint64_t = 486382
        var expected = ethash_h256_t()
        expected.b = (
            241, 175,  44, 134,  39, 121, 245, 239, 228, 236,  43, 160, 195, 152,  46,   7,
            199,   5, 253, 147, 241, 206,  98,  43,   3, 104,  17,  40, 192,  79, 106, 162)
        let result = ethash_get_seedhash(blockNumber)
        if result == expected {
            print("TEST: Seed hash for block \(blockNumber) correct")
        } else {
            print(result.b)
            print("ERROR: generating seed hash failed! ")
        }
    }

    private func testSeedComputationAfterOlder() {
        let blockNumber1: ethash_uint64_t = 50000
        let blockNumber2: ethash_uint64_t = 486382
        var expected = ethash_h256_t()
        expected.b = (
            241, 175,  44, 134,  39, 121, 245, 239, 228, 236,  43, 160, 195, 152,  46,   7,
            199,   5, 253, 147, 241, 206,  98,  43,   3, 104,  17,  40, 192,  79, 106, 162)
        let _ = ethash_get_seedhash(blockNumber1)
        let result = ethash_get_seedhash(blockNumber2)
        if result == expected {
            print("TEST: Seed hash for block \(blockNumber2) after older block correct")
        } else {
            print(result.b)
            print("ERROR: generating seed hash failed! ")
        }
    }

    private func testSeedComputationAfterNewer() {
        let blockNumber1: ethash_uint64_t = 972764
        let blockNumber2: ethash_uint64_t = 486382
        var expected = ethash_h256_t()
        expected.b = (
            241, 175,  44, 134,  39, 121, 245, 239, 228, 236,  43, 160, 195, 152,  46,   7,
            199,   5, 253, 147, 241, 206,  98,  43,   3, 104,  17,  40, 192,  79, 106, 162)
        let _ = ethash_get_seedhash(blockNumber1)
        let result = ethash_get_seedhash(blockNumber2)
        if result == expected {
            print("TEST: Seed hash for block \(blockNumber2) after newer block correct")
        } else {
            print(result.b)
            print("ERROR: generating seed hash failed! ")
        }
    }

    private func testCacheGeneration() {
        let testBlockNumber: UInt64 = 486382
        var expectedFirstNode = ethash_node_t()
        expectedFirstNode.bytes = (
            220, 171, 107, 151,  53, 222,  51, 166, 247, 205,  24,  46,  91, 216,  48, 133,
            92, 178, 213, 200, 140,  56,  78,  39, 216, 141, 191,  21, 236,  19,  91,  13,
            65,  78,  42, 108, 202, 216, 118, 212,  39, 169, 199, 161, 206, 210,  71, 173,
            43, 197,  33,  72,  77, 136,   8, 255, 174,  40, 150, 247,  71,  72, 179, 150)
        var expectedLastNode = ethash_node_t()
        expectedLastNode.bytes = (
            13, 117,  10, 189,  65,  30, 132,  78, 179, 242, 149, 203, 147, 147, 115, 104,
            35, 100, 135, 124,  56, 196, 222, 166, 210, 199,  31, 213, 128, 182, 249, 222,
            107,  62,  86, 108,  91, 152,  26, 167,  34, 189, 231, 248,  63,  66,  31,  13,
            12, 228, 207, 219, 187, 186, 250,  59,  83, 131, 187,  38,  73,  34,  99, 101)

        let cacheSize = ethash_get_cachesize(testBlockNumber)
        var epochSeed = ethash_get_seedhash(testBlockNumber)
        let cacheElements = ethash_get_cache_node_number(testBlockNumber)

        let nodeCachePointer = UnsafeMutablePointer<ethash_node_t>.allocate(capacity: Int(cacheElements))
        let success = ethash_compute_cache_nodes(nodeCachePointer,
                                                 cacheSize,
                                                 &epochSeed)
        let cache = Array(UnsafeBufferPointer(start: nodeCachePointer, count: Int(cacheElements)))

        guard let firstNode = cache.first,
            let lastNode = cache.last else {
                print("ERROR: elements in generated cache are wrong!")
                return
        }

        if firstNode == expectedFirstNode && lastNode == expectedLastNode {
            print("TEST: cache generation ok")
        } else {
            print("ERROR: cache generation failed!")
        }
    }

    private func testCalculatingDAGItem() {
        let testBlockNumber: UInt64 = 486382
        var expected = ethash_node_t()
        expected.words = (
            1374658420,  354768702, 2896529664, 2747143523,
            2170073349, 2213734027, 3305365672, 2905945282,
            24309616, 2063569844,  386702562, 3315508660,
            385123472, 1791705825, 3236569055, 3679207316)

        let cacheSize = ethash_get_cachesize(testBlockNumber)
        let cacheElements = ethash_get_cache_node_number(testBlockNumber)
        var epochSeed = ethash_get_seedhash(testBlockNumber)
        let nodeCachePointer = UnsafeMutablePointer<ethash_node_t>.allocate(capacity: Int(cacheElements))
        let success = ethash_compute_cache_nodes(nodeCachePointer,
                                                 cacheSize,
                                                 &epochSeed)
        if !success {
            print("ERROR: Cache generation error when calculating DAG item")
        }

        let rawLight = ethash_light_new_with_cache(testBlockNumber,
                                                   nodeCachePointer,
                                                   cacheSize)
        let nodeIndex: ethash_uint32_t = UInt32(8752162 * MIX_NODES + 0)
        var result = ethash_node_t()
        result.words = (
            105025374, 1, 2688, 0,
            4, 0, 485141592, 1,
            40222720, 24576, 485134336, 1,
            40227840, 24576, 40227840, 80
        )
        ethash_calculate_dag_item(&result, nodeIndex, rawLight)

        if result == expected {
            print("TEST: DAG item generation ok")
        } else {
            print("ERROR: DAG item generation failed!")
        }
    }
}
