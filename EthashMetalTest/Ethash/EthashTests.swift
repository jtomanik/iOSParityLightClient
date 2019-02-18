//
//  EthashTests.swift
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 02/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

import Foundation

public protocol EthashBackend {
    var name: String { get }

    func calculateKeccak256(from inputString: String, callback: ((ethash_h256_t?) -> Void) )
    func calculateKeccak512(from inputString: String, callback: ((ethash_node?) -> Void) )
    func calculateSeedhash(for blocknumber: ethash_uint64_t, otherBlocknumber: ethash_uint64_t?, callback: ((ethash_h256_t?) -> Void) )
    func generateCache(for blocknumber: ethash_uint64_t, callback: (([ethash_node_t]?) -> Void) )
    func calculateDAGItem(for blocknumber: ethash_uint64_t, nodeIndex index: UInt32, callback: ((ethash_node_t?) -> Void) )
    func calculateLightClient(for blocknumber: ethash_uint64_t,
                              hash: ethash_h256_t,
                              nonce: ethash_uint64_t,
                              callback: @escaping ((ethash_return_value_t?) -> Void) )

}

public struct EthashTests {
    private let backend: EthashBackend

    public init?(backend: EthashBackend?) {
        guard let backend = backend else {
            return nil
        }
        self.backend = backend
    }

    // MARK: Tests

    public func testUnits() {
        testKeccak()
        testSeedComputation()
        testCacheGeneration()
        testCalculatingDAGItem()
        testLightClient()
    }

    private func testKeccak() {
        // SHA3_256
        testEmptyKeccak256()
        testStringKeccak256()
        testLongKeccak256()

        testEmptyKeccak512()
        testStringKeccak512()
        testLongKeccak512()
    }

    private func testEmptyKeccak256() {
        let inputString = ""

        var expected = ethash_h256_t()
        expected.b = (
            0xc5, 0xd2, 0x46, 0x01, 0x86, 0xf7, 0x23, 0x3c, 0x92, 0x7e, 0x7d, 0xb2, 0xdc, 0xc7, 0x03, 0xc0,
            0xe5, 0x00, 0xb6, 0x53, 0xca, 0x82, 0x27, 0x3b, 0x7b, 0xfa, 0xd8, 0x04, 0x5d, 0x85, 0xa4, 0x70)

        backend.calculateKeccak256(from: inputString) { [backend] result -> Void in
            guard let result = result else {
                print("ERROR \(backend.name): keccak 256 function failed")
                return
            }
            if result == expected {
                print("TEST \(backend.name): keccak 256 empty string ok")
            } else {
                print(result.b)
                print("ERROR \(backend.name): generating keccak 256 failed")
            }
        }
    }

    private func testStringKeccak256() {
        let inputString = "abc"

        var expected = ethash_h256_t()
        expected.b = (
            0x4e, 0x03, 0x65, 0x7a, 0xea, 0x45, 0xa9, 0x4f, 0xc7, 0xd4, 0x7b, 0xa8, 0x26, 0xc8, 0xd6, 0x67,
            0xc0, 0xd1, 0xe6, 0xe3, 0x3a, 0x64, 0xa0, 0x36, 0xec, 0x44, 0xf5, 0x8f, 0xa1, 0x2d, 0x6c, 0x45)

        backend.calculateKeccak256(from: inputString) { [backend] result in
            guard let result = result else {
                print("ERROR \(backend.name): keccak 256 function failed")
                return
            }
            if result == expected {
                print("TEST \(backend.name): keccak 256 input string ok")
            } else {
                print(result.b)
                print("ERROR \(backend.name): generating keccak 256 failed")
            }
        }
    }

    private func testLongKeccak256() {
        let inputString = "0123456789abcdef0123456789abcdef"

        var expected = ethash_h256_t()
        expected.b = (
            0x9a, 0x57, 0x06, 0x7e, 0xe2, 0x1c, 0xfc, 0x99, 0xac, 0x55, 0xdb, 0xc3, 0xbc, 0x5e, 0x6f, 0x94,
            0x61, 0xdb, 0xd7, 0xff, 0xc6, 0x0b, 0x79, 0xa1, 0x2f, 0x3e, 0x93, 0xc9, 0xc9, 0x87, 0xf0, 0xcf)

        backend.calculateKeccak256(from: inputString) { [backend] result in
            guard let result = result else {
                print("ERROR \(backend.name): keccak 256 function failed")
                return
            }
            if result == expected {
                print("TEST \(backend.name): keccak 256 input 32 byte string ok")
            } else {
                print(result.b)
                print("ERROR \(backend.name): generating keccak 256 failed")
            }
        }
    }

    private func testEmptyKeccak512() {
        let inputString = ""

        var expected = ethash_node()
        expected.bytes = (
            0x0e, 0xab, 0x42, 0xde, 0x4c, 0x3c, 0xeb, 0x92, 0x35, 0xfc, 0x91, 0xac, 0xff, 0xe7, 0x46, 0xb2,
            0x9c, 0x29, 0xa8, 0xc3, 0x66, 0xb7, 0xc6, 0x0e, 0x4e, 0x67, 0xc4, 0x66, 0xf3, 0x6a, 0x43, 0x04,
            0xc0, 0x0f, 0xa9, 0xca, 0xf9, 0xd8, 0x79, 0x76, 0xba, 0x46, 0x9b, 0xcb, 0xe0, 0x67, 0x13, 0xb4,
            0x35, 0xf0, 0x91, 0xef, 0x27, 0x69, 0xfb, 0x16, 0x0c, 0xda, 0xb3, 0x3d, 0x36, 0x70, 0x68, 0x0e)

        backend.calculateKeccak512(from: inputString) { [backend] result in
            guard let result = result else {
                print("ERROR \(backend.name): keccak 512 function failed")
                return
            }
            if result == expected {
                print("TEST \(backend.name): keccak 512 empty string ok")
            } else {
                print(result.bytes)
                print("ERROR \(backend.name): generating keccak 512 failed")
            }
        }
    }

    private func testStringKeccak512() {
        let inputString = "abc"

        var expected = ethash_node()
        expected.bytes = (
            0x18, 0x58, 0x7d, 0xc2, 0xea, 0x10, 0x6b, 0x9a, 0x15, 0x63, 0xe3, 0x2b, 0x33, 0x12, 0x42, 0x1c,
            0xa1, 0x64, 0xc7, 0xf1, 0xf0, 0x7b, 0xc9, 0x22, 0xa9, 0xc8, 0x3d, 0x77, 0xce, 0xa3, 0xa1, 0xe5,
            0xd0, 0xc6, 0x99, 0x10, 0x73, 0x90, 0x25, 0x37, 0x2d, 0xc1, 0x4a, 0xc9, 0x64, 0x26, 0x29, 0x37,
            0x95, 0x40, 0xc1, 0x7e, 0x2a, 0x65, 0xb1, 0x9d, 0x77, 0xaa, 0x51, 0x1a, 0x9d, 0x00, 0xbb, 0x96)

        backend.calculateKeccak512(from: inputString) { [backend] result in
            guard let result = result else {
                print("ERROR \(backend.name): keccak 512 function failed")
                return
            }
            if result == expected {
                print("TEST \(backend.name): keccak 512 input string ok")
            } else {
                print(result.bytes)
                print("ERROR \(backend.name): generating keccak 512 failed")
            }
        }
    }

    private func testLongKeccak512() {
        let inputString = "0123456789abcdef0123456789abcdef"

        var expected = ethash_node()
        expected.bytes = (
            0x0f, 0x99, 0x2a, 0x38, 0x99, 0xa5, 0xf3, 0x50, 0x02, 0x78, 0x64, 0x7f, 0x9a, 0x69, 0x9b, 0xc8,
            0xe0, 0x0d, 0xff, 0x7e, 0x5c, 0xa4, 0x1a, 0xee, 0x45, 0x78, 0x1d, 0xc1, 0x93, 0xfe, 0x52, 0xaf,
            0x39, 0xab, 0x70, 0xae, 0xd8, 0x66, 0x12, 0x01, 0xf9, 0x90, 0xf7, 0xd0, 0x53, 0x39, 0x6e, 0xa7,
            0x30, 0xb1, 0x9e, 0x38, 0x96, 0xbd, 0x0e, 0x14, 0xdd, 0x09, 0x83, 0x5b, 0xd4, 0x2f, 0x6b, 0x8b)

        backend.calculateKeccak512(from: inputString) { [backend] result in
            guard let result = result else {
                print("ERROR \(backend.name): keccak 512 function failed")
                return
            }
            if result == expected {
                print("TEST \(backend.name): keccak 512 input 32 byte string ok")
            } else {
                print(result.bytes)
                print("ERROR \(backend.name): generating keccak 512 failed")
            }
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

        backend.calculateSeedhash(for: blockNumber, otherBlocknumber: nil) { result in
            guard let result = result else {
                print("ERROR \(backend.name): seedhash function failed")
                return
            }
            if result == expected {
                print("TEST \(backend.name): Seed hash for block \(blockNumber) correct")
            } else {
                print(result.b)
                print("ERROR \(backend.name): generating seed hash failed! ")
            }
        }
    }

    private func testSeedForRefferenceBlock() {
        let blockNumber: ethash_uint64_t = 486382

        var expected = ethash_h256_t()
        expected.b = (
            241, 175,  44, 134,  39, 121, 245, 239, 228, 236,  43, 160, 195, 152,  46,   7,
            199,   5, 253, 147, 241, 206,  98,  43,   3, 104,  17,  40, 192,  79, 106, 162)

        backend.calculateSeedhash(for: blockNumber, otherBlocknumber: nil) { result in
            guard let result = result else {
                print("ERROR \(backend.name): seedhash function failed")
                return
            }
            if result == expected {
                print("TEST \(backend.name): Seed hash for block \(blockNumber) correct")
            } else {
                print(result.b)
                print("ERROR \(backend.name): generating seed hash failed! ")
            }
        }
    }

    private func testSeedComputationAfterOlder() {
        let blockNumber1: ethash_uint64_t = 50000
        let blockNumber2: ethash_uint64_t = 486382

        var expected = ethash_h256_t()
        expected.b = (
            241, 175,  44, 134,  39, 121, 245, 239, 228, 236,  43, 160, 195, 152,  46,   7,
            199,   5, 253, 147, 241, 206,  98,  43,   3, 104,  17,  40, 192,  79, 106, 162)

        backend.calculateSeedhash(for: blockNumber2, otherBlocknumber: blockNumber1) { result in
            guard let result = result else {
                print("ERROR \(backend.name): seedhash function failed")
                return
            }
            if result == expected {
                print("TEST \(backend.name): Seed hash for block \(blockNumber2) after older block correct")
            } else {
                print(result.b)
                print("ERROR \(backend.name): generating seed hash failed! ")
            }
        }
    }

    private func testSeedComputationAfterNewer() {
        let blockNumber1: ethash_uint64_t = 972764
        let blockNumber2: ethash_uint64_t = 486382

        var expected = ethash_h256_t()
        expected.b = (
            241, 175,  44, 134,  39, 121, 245, 239, 228, 236,  43, 160, 195, 152,  46,   7,
            199,   5, 253, 147, 241, 206,  98,  43,   3, 104,  17,  40, 192,  79, 106, 162)

        backend.calculateSeedhash(for: blockNumber2, otherBlocknumber: blockNumber1) { result in
            guard let result = result else {
                print("ERROR \(backend.name): seedhash function failed")
                return
            }
            if result == expected {
                print("TEST \(backend.name): Seed hash for block \(blockNumber2) after newer block correct")
            } else {
                print(result.b)
                print("ERROR \(backend.name): generating seed hash failed! ")
            }
        }
    }

    private func testCacheGeneration() {
        let blockNumber: ethash_uint64_t = 486382

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

        backend.generateCache(for: blockNumber) { result in
            guard let result = result else {
                print("ERROR \(backend.name): cache generation function failed")
                return
            }
            guard let firstNode = result.first,
                let lastNode = result.last else {
                    print("ERROR \(backend.name): elements in generated cache are wrong!")
                    return
            }
            if firstNode == expectedFirstNode && lastNode == expectedLastNode {
                print("TEST \(backend.name): cache generation ok")
            } else {
                print(firstNode.words)
                print(lastNode.words)
                print("ERROR \(backend.name): cache generation failed!")
            }
        }
    }

    private func testCalculatingDAGItem() {
        let blockNumber: ethash_uint64_t = 486382
        let nodeIndex = UInt32(8752162 * 2 + 0) // MIX_NODES = 2

        var expected = ethash_node_t()
        expected.words = (
            1374658420,  354768702, 2896529664, 2747143523,
            2170073349, 2213734027, 3305365672, 2905945282,
              24309616, 2063569844,  386702562, 3315508660,
             385123472, 1791705825, 3236569055, 3679207316)

        backend.calculateDAGItem(for: blockNumber, nodeIndex: nodeIndex) { result in
            guard let result = result else {
                print("ERROR \(backend.name): calculate DAG item  function failed")
                return
            }
            if result == expected {
                print("TEST \(backend.name): DAG item generation ok")
            } else {
                print(result.words)
                print("ERROR \(backend.name): DAG item generation failed!")
            }
        }
    }

    private func testLightClient() {
        let blockNumber: ethash_uint64_t = 486382
        let hash: ethash_h256 = {
            var hash = ethash_h256()
            hash.b = (
                0xf5, 0x7e, 0x6f, 0x3a, 0xcf, 0xc0, 0xdd, 0x4b, 0x5b, 0xf2, 0xbe, 0xe4, 0x0a, 0xb3, 0x35, 0x8a,
                0xa6, 0x87, 0x73, 0xa8, 0xd0, 0x9f, 0x5e, 0x59, 0x5e, 0xab, 0x55, 0x94, 0x05, 0x52, 0x7d, 0x72)
            return hash
        }()
        let mix_hash: ethash_h256 = {
            var mix_hash = ethash_h256()
            mix_hash.b = (
                0x1f, 0xff, 0x04, 0xce, 0xc9, 0x41, 0x73, 0xfd, 0x59, 0x1e, 0x3d, 0x89, 0x60, 0xce, 0x6b, 0xdf,
                0x8b, 0x19, 0x71, 0x04, 0x8c, 0x71, 0xff, 0x93, 0x7b, 0xb2, 0xd3, 0x2a, 0x64, 0x31, 0xab, 0x6d)
            return mix_hash
        }()
        let boundary: ethash_h256 = {
            var boundary = ethash_h256()
            boundary.b = (
                0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x3e, 0x9b, 0x6c, 0x69, 0xbc, 0x2c, 0xe2, 0xa2, 0x4a, 0x8e,
                0x95, 0x69, 0xef, 0xc7, 0xd7, 0x1b, 0x33, 0x35, 0xdf, 0x36, 0x8c, 0x9a, 0xe9, 0x7e, 0x53, 0x84)
            return boundary
        }()
        let nonce: ethash_uint64_t = 0xd7b3ac70a301a249

        backend.calculateLightClient(for: blockNumber, hash: hash, nonce: nonce) { [backend] result in
            guard let result = result else {
                print("ERROR \(backend.name): calculate Light client function failed")
                return
            }
            if result.success {
                print("TEST \(backend.name): light client compute result ok")
                let m1 = mix_hash
                let check1 = result.mix_hash == mix_hash
                if check1 {
                    print("TEST \(backend.name): light client result mix hash correct")
                } else {
                    print("\(m1.b.0)")
                    print("\(result.mix_hash.b.0)")
                    print("ERROR \(backend.name): light client result mix hash failed")
                }
                if result.result == boundary {
                    print("TEST \(backend.name): light client result boundary correct")
                } else {
                    print("ERROR \(backend.name): light client result boundary failed")
                }
            } else {
                print("ERROR \(backend.name): light client compute result failed")
            }
        }
    }
}
