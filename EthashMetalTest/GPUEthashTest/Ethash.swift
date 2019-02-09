//
//  Ethash.swift
//  GPUEthashTest
//
//  Created by Jakub Tomanik on 06/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

import Foundation

import Foundation

struct EthashTests {
    // MARK: Tests

    func testUnits() {
        testKeccak()
    }

    private func testKeccak() {
        // SHA3_256
        testEmptyKeccak256()
        testStringKeccak256()
    }

    private func testEmptyKeccak256() {
        let inputString = ""
        var data = inputString.data(using: String.Encoding.ascii)!

        var expected = ethash_h256_t()
        expected.b = (
            0xc5, 0xd2, 0x46, 0x01, 0x86, 0xf7, 0x23, 0x3c, 0x92, 0x7e, 0x7d, 0xb2, 0xdc, 0xc7, 0x03, 0xc0,
            0xe5, 0x00, 0xb6, 0x53, 0xca, 0x82, 0x27, 0x3b, 0x7b, 0xfa, 0xd8, 0x04, 0x5d, 0x85, 0xa4, 0x70)

        var returned = ethash_h256_t()
        var result = ethash_int32_t()
        let count = UInt32(data.count)

        data.withUnsafeMutableBytes { (pointer: UnsafeMutablePointer<ethash_uint8_t>) -> Void in
            cpp_ethash_keccak(pointer,
                              count,
                              &returned,
                              &result)
        }

        if returned == expected {
            print("TEST: keccak 256 empty string ok")
        } else {
            print(returned.b)
            print("ERROR: generating keccak 256 failed")
        }
    }

    private func testStringKeccak256() {
        let inputString = "abc"
        var data = inputString.data(using: String.Encoding.ascii)!

        var expected = ethash_h256_t()
        expected.b = (
            0x4e, 0x03, 0x65, 0x7a, 0xea, 0x45, 0xa9, 0x4f, 0xc7, 0xd4, 0x7b, 0xa8, 0x26, 0xc8, 0xd6, 0x67,
            0xc0, 0xd1, 0xe6, 0xe3, 0x3a, 0x64, 0xa0, 0x36, 0xec, 0x44, 0xf5, 0x8f, 0xa1, 0x2d, 0x6c, 0x45)

        var returned = ethash_h256_t()
        var result = ethash_int32_t()
        let count = UInt32(data.count)

        data.withUnsafeMutableBytes { (pointer: UnsafeMutablePointer<ethash_uint8_t>) -> Void in
            cpp_ethash_keccak(pointer,
                              count,
                              &returned,
                              &result)
        }

        if returned == expected {
            print("TEST: keccak 256 input string ok")
        } else {
            print(returned.b)
            print("ERROR: generating keccak 256 failed")
        }
    }
}
