//
//  Common.swift
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 03/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

import Foundation

extension ethash_h256 {
    static func toRawArray(_ instance: ethash_h256) -> [ethash_uint64_t] {
        var tmp = instance
        return [ethash_uint64_t](UnsafeBufferPointer(start: &tmp.double_words.0, count: MemoryLayout.size(ofValue: tmp)))
    }
}

extension ethash_node {
    static func toRawArray(_ instance: ethash_node) -> [ethash_uint64_t] {
        var tmp = instance
        return [ethash_uint64_t](UnsafeBufferPointer(start: &tmp.double_words.0, count: MemoryLayout.size(ofValue: tmp)))
    }
}

extension ethash_h256: Equatable {
    public static func == (lhs: ethash_h256, rhs: ethash_h256) -> Bool {
        return (
                lhs.double_words.0 == rhs.double_words.0 &&
                lhs.double_words.1 == rhs.double_words.1 &&
                lhs.double_words.2 == rhs.double_words.2 &&
                lhs.double_words.3 == rhs.double_words.3
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

extension ethash_h256 {

    static func from(bytes: (ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t, ethash_uint8_t)) -> ethash_h256 {
        var ret = ethash_h256()
        ret.double_words.0 = ethash_uint64_t.fromBytes(ethash_uint32_t.fromBytes(bytes.0,  bytes.1,  bytes.2,  bytes.3),
                                                       ethash_uint32_t.fromBytes(bytes.4,  bytes.5,  bytes.6,  bytes.7))
        ret.double_words.1 = ethash_uint64_t.fromBytes(ethash_uint32_t.fromBytes(bytes.8,  bytes.9,  bytes.10, bytes.11),
                                                       ethash_uint32_t.fromBytes(bytes.12, bytes.13, bytes.14, bytes.15))
        ret.double_words.2 = ethash_uint64_t.fromBytes(ethash_uint32_t.fromBytes(bytes.16, bytes.17, bytes.18, bytes.19),
                                                       ethash_uint32_t.fromBytes(bytes.20, bytes.21, bytes.22, bytes.23))
        ret.double_words.3 = ethash_uint64_t.fromBytes(ethash_uint32_t.fromBytes(bytes.24, bytes.25, bytes.26, bytes.27),
                                                       ethash_uint32_t.fromBytes(bytes.28, bytes.29, bytes.30, bytes.31))
        return ret
    }
}

extension ethash_uint32_t {

    static func fromBytes(_ a: ethash_uint8_t, _ b: ethash_uint8_t, _ c: ethash_uint8_t, _ d: ethash_uint8_t) -> ethash_uint32_t {
        var ret: ethash_uint32_t = 0
        let aa = UInt32(a) << 24
        let bb = UInt32(b) << 16
        let cc = UInt32(c) << 8
        let dd = UInt32(d)
        ret = aa | bb | cc | dd
        return ret
    }
}

extension ethash_uint64_t {

    static func fromBytes(_ a: ethash_uint32_t, _ b: ethash_uint32_t) -> ethash_uint64_t {
        var ret: ethash_uint64_t = 0
        let aa = UInt64(a) << 32
        let bb = UInt64(b)
        ret = aa | bb
        return ret
    }
}
