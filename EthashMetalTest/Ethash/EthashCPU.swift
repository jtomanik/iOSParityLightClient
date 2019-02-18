//
//  Ethash.swift
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 09/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

import Foundation

class EthashCPU: EthashBackend {

    let name: String = "CPU"

    func calculateKeccak256(from inputString: String, callback: ((ethash_h256_t?) -> Void)) {
        let data = inputString.data(using: String.Encoding.ascii)!

        data.withUnsafeBytes { (pointer: UnsafePointer<ethash_uint8_t>) -> Void in
            let result = ethash_keccak_256(pointer, data.count)
            callback(result)
        }
    }

    func calculateKeccak512(from inputString: String, callback: ((ethash_node?) -> Void)) {
        let data = inputString.data(using: String.Encoding.ascii)!

        data.withUnsafeBytes { (pointer: UnsafePointer<ethash_uint8_t>) -> Void in
            let result = ethash_keccak_512(pointer, data.count)
            callback(result)
        }
    }

    func calculateSeedhash(for blocknumber: ethash_uint64_t, otherBlocknumber: ethash_uint64_t?, callback: ((ethash_h256_t?) -> Void)) {
        var result = ethash_h256_t()
        if let otherBlock = otherBlocknumber {
            let _ = ethash_get_seedhash(otherBlock)
        }
        result = ethash_get_seedhash(blocknumber)
        callback(result)
    }

    func generateCache(for blocknumber: ethash_uint64_t, callback: (([ethash_node_t]?) -> Void)) {
        let cacheSize = ethash_get_cachesize(blocknumber)
        var epochSeed = ethash_get_seedhash(blocknumber)
        let cacheElements = ethash_get_cache_node_number(blocknumber)

        let nodeCachePointer = UnsafeMutablePointer<ethash_node_t>.allocate(capacity: Int(cacheElements))
        let success = ethash_compute_cache_nodes(nodeCachePointer,
                                                 cacheSize,
                                                 &epochSeed)
        guard success else {
             callback(nil)
            return
        }
        let cache = Array(UnsafeBufferPointer(start: nodeCachePointer, count: Int(cacheElements)))
        callback(cache)
    }

    func calculateDAGItem(for blocknumber: ethash_uint64_t, nodeIndex index: UInt32, callback: ((ethash_node_t?) -> Void)) {
        let cacheSize = ethash_get_cachesize(blocknumber)
        let cacheElements = ethash_get_cache_node_number(blocknumber)
        var epochSeed = ethash_get_seedhash(blocknumber)
        let nodeCachePointer = UnsafeMutablePointer<ethash_node_t>.allocate(capacity: Int(cacheElements))
        let success = ethash_compute_cache_nodes(nodeCachePointer,
                                                 cacheSize,
                                                 &epochSeed)
        guard success else {
            callback(nil)
            return
        }

        let rawLight = ethash_light_new_with_cache(blocknumber,
                                                   nodeCachePointer,
                                                   cacheSize)
        var result = ethash_node_t()
        ethash_calculate_dag_item(&result, index, rawLight)
        callback(result)
    }

    func calculateLightClient(for blocknumber: ethash_uint64_t,
                              hash: ethash_h256_t,
                              nonce: ethash_uint64_t,
                              callback: @escaping ((ethash_return_value_t?) -> Void) ) {
        let rounds = 1 // 30000

        let cacheSize = ethash_get_cachesize(blocknumber)
        let cacheElements = ethash_get_cache_node_number(blocknumber)
        var epochSeed = ethash_get_seedhash(blocknumber)
        let nodeCachePointer = UnsafeMutablePointer<ethash_node_t>.allocate(capacity: Int(cacheElements))
        let success = ethash_compute_cache_nodes(nodeCachePointer,
                                                 cacheSize,
                                                 &epochSeed)
        guard success else {
            callback(nil)
            return
        }

        let rawLight = ethash_light_new_with_cache(blocknumber,
                                                   nodeCachePointer,
                                                   cacheSize)
        guard let light = rawLight else {
            print("Failed to initialize llight structure")
            callback(nil)
            return
        }

        var result = ethash_return_value_t()

        let ethashStart = Date()
        for _ in 1...rounds {
            result = ethash_light_compute(light,
                                          hash,
                                          nonce)
        }
        let ethashEnd = Date()

        let ethashNumberOfSeconds = ethashEnd.timeIntervalSince(ethashStart)
        callback(result)

//        DispatchQueue.global(qos: .userInitiated).async { [rounds, hash, nonce, light, callback] in
//            var result = ethash_return_value_t()
//
//            let ethashStart = Date()
//            for _ in 1...rounds {
//                result = ethash_light_compute(light,
//                                              hash,
//                                              nonce)
//            }
//            let ethashEnd = Date()
//
//            let ethashNumberOfSeconds = ethashEnd.timeIntervalSince(ethashStart)
//
//            DispatchQueue.main.async {
//                callback(result)
//            }
//        }
    }
}
