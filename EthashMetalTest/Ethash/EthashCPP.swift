//
//  Ethash.swift
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 09/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

import Foundation

public class EthashCPP: EthashBackend {

    public let name: String = "CPP"

    public init() {
        
    }

    public func calculateKeccak256(from inputString: String, callback: ((ethash_h256_t?) -> Void)) {
        var data = inputString.data(using: String.Encoding.ascii)!
        var result = ethash_h256_t()
        var value = ethash_int32_t()
        let length = ethash_uint32_t(data.count)

        data.withUnsafeMutableBytes { (pointer: UnsafeMutablePointer<ethash_uint8_t>) -> Void in
            EthashObjCPP.ethashKeccak256(from: pointer,
                                             withSize: length,
                                             returning: &result,
                                             andResult: &value)
            callback(result)
        }
    }

    public func calculateKeccak512(from inputString: String, callback: ((ethash_node?) -> Void)) {
        var data = inputString.data(using: String.Encoding.ascii)!
        var result = ethash_node_t()
        var value = ethash_int32_t()
        let length = ethash_uint32_t(data.count)

        data.withUnsafeMutableBytes { (pointer: UnsafeMutablePointer<ethash_uint8_t>) -> Void in
            EthashObjCPP.ethashKeccak512(from: pointer,
                                             withSize: length,
                                             returning: &result,
                                             andResult: &value)
            callback(result)
        }
    }

    public func calculateSeedhash(for blocknumber: ethash_uint64_t, otherBlocknumber: ethash_uint64_t?, callback: ((ethash_h256_t?) -> Void)) {
        var block_number = blocknumber
        var result = ethash_h256_t()

        if let otherBlock = otherBlocknumber {
            var other_block = otherBlock
            EthashObjCPP.ethashGetSeedhash(for: &other_block, returning: &result)
        }
        EthashObjCPP.ethashGetSeedhash(for: &block_number, returning: &result)
        callback(result)
    }

    public func generateCache(for blocknumber: ethash_uint64_t, callback: (([ethash_node_t]?) -> Void)) {
        var block_number = blocknumber
        var cacheSize = ethash_uint64_t()
        EthashObjCPP.ethashGetCacheSize(for: &block_number, returning: &cacheSize)

        var epochSeed = ethash_h256_t()
        EthashObjCPP.ethashGetSeedhash(for: &block_number, returning: &epochSeed)

        var cacheElements = ethash_uint32_t()
        EthashObjCPP.ethashGetCacheNodeNumber(for: &block_number, returning: &cacheElements)

        let nodeCachePointer = UnsafeMutablePointer<ethash_node_t>.allocate(capacity: Int(cacheElements))
        let success = EthashObjCPP.ethashComputeCacheNodes(nodeCachePointer,
                                                           cacheSize: cacheSize,
                                                           andSeed: &epochSeed)

        guard success else {
             callback(nil)
            return
        }
        let cache = Array(UnsafeBufferPointer(start: nodeCachePointer, count: Int(cacheElements)))
        callback(cache)
    }

    public func calculateDAGItem(for blocknumber: ethash_uint64_t, nodeIndex index: UInt32, callback: ((ethash_node_t?) -> Void)) {
        var block_number = blocknumber
        var cacheSize = ethash_uint64_t()
        EthashObjCPP.ethashGetCacheSize(for: &block_number, returning: &cacheSize)

        var epochSeed = ethash_h256_t()
        EthashObjCPP.ethashGetSeedhash(for: &block_number, returning: &epochSeed)

        var cacheElements = ethash_uint32_t()
        EthashObjCPP.ethashGetCacheNodeNumber(for: &block_number, returning: &cacheElements)

        let nodeCachePointer = UnsafeMutablePointer<ethash_node_t>.allocate(capacity: Int(cacheElements))
        let success = EthashObjCPP.ethashComputeCacheNodes(nodeCachePointer,
                                                           cacheSize: cacheSize,
                                                           andSeed: &epochSeed)

        guard success else {
            callback(nil)
            return
        }

        let rawLight = EthashObjCPP.ethashNewLightClient(for: block_number, withCache: nodeCachePointer, ofSize: cacheSize)
        var result = ethash_node_t()
        EthashObjCPP.ethashCalculateDAGItem(for: index, andLightClient: rawLight, returning: &result)
        callback(result)
    }

    public func calculateLightClient(for blocknumber: ethash_uint64_t, hash: ethash_h256_t, nonce: ethash_uint64_t, callback: @escaping ((ethash_return_value_t?) -> Void)) {
        let rounds = 1 // 30000

        var block_number = blocknumber
        var cacheSize = ethash_uint64_t()
        EthashObjCPP.ethashGetCacheSize(for: &block_number, returning: &cacheSize)

        var epochSeed = ethash_h256_t()
        EthashObjCPP.ethashGetSeedhash(for: &block_number, returning: &epochSeed)

        var cacheElements = ethash_uint32_t()
        EthashObjCPP.ethashGetCacheNodeNumber(for: &block_number, returning: &cacheElements)

        let nodeCachePointer = UnsafeMutablePointer<ethash_node_t>.allocate(capacity: Int(cacheElements))
        let success = EthashObjCPP.ethashComputeCacheNodes(nodeCachePointer,
                                                           cacheSize: cacheSize,
                                                           andSeed: &epochSeed)
        guard success else {
            callback(nil)
            return
        }

        let rawLight = EthashObjCPP.ethashNewLightClient(for: block_number, withCache: nodeCachePointer, ofSize: cacheSize)

        var result = ethash_return_value_t()
        let ethashStart = Date()
        for _ in 1...rounds {
            EthashObjCPP.ethashLightCompute(rawLight, forHeader: hash, andNonce: nonce, returning: &result)
        }
        let ethashEnd = Date()

        let ethashNumberOfSeconds = ethashEnd.timeIntervalSince(ethashStart)
        callback(result)
    }
}
