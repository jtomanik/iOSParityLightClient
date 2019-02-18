//
//  NSObject+EthashObjCPP.m
//  CmdTestCpp
//
//  Created by Jakub Tomanik on 14/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#import "EthashObjCPP.h"
#include "ethash.hpp"

@interface EthashObjCPP()

@end

@implementation EthashObjCPP

+ (void) ethashKeccak256From:(ethash_uint8_t *)data withSize:(ethash_uint32_t)size returning:(ethash_h256_t *)ret andResult: (ethash_int32_t *)result {
    cpp_ethash_keccak_256(data, size, ret, result);
}

+ (void) ethashKeccak512From:(ethash_uint8_t *)data withSize:(ethash_uint32_t)size returning:(ethash_node_t *)ret andResult: (ethash_int32_t *)result {
    cpp_ethash_keccak_512(data, size, ret, result);
}

+ (void) ethashGetSeedhashFor:(ethash_uint64_t *)blocknumber returning:(ethash_h256_t *)ret {
    cpp_ethash_get_seedhash(blocknumber, ret);
}

+ (void) ethashGetCacheSizeFor:(ethash_uint64_t *)blocknumber returning:(ethash_uint64_t *)ret {
    *ret = cpp_ethash_get_cachesize(*blocknumber);
}

+ (void) ethashGetCacheNodeNumberFor:(ethash_uint64_t *)blocknumber returning:(ethash_uint32_t *)ret {
    *ret = cpp_ethash_get_cache_node_number(*blocknumber);
}

+ (bool) ethashComputeCacheNodes:(ethash_node_t *)nodes cacheSize:(ethash_uint64_t)cache_size andSeed:(ethash_h256_t *)seed {
    return cpp_ethash_compute_cache_nodes(nodes, cache_size, seed);
}

+ (ethash_light_ptr) ethashNewLightClientFor:(ethash_uint64_t)block_number withCache:(ethash_node_t *)nodes ofSize:(ethash_uint64_t)cache_size {
    return cpp_ethash_light_new_with_cache(block_number, nodes, cache_size);
}

+ (void) ethashCalculateDAGItemFor:(ethash_uint32_t)nodeIndex andLightClient:(ethash_light_ptr)light returning:(ethash_node_t *) ret {
    cpp_ethash_calculate_dag_item(ret, nodeIndex, light);
}

+ (void) ethashLightCompute:(ethash_light_ptr)light forHeader:(ethash_h256_t)header_hash andNonce:(ethash_uint64_t)nonce returning:(ethash_return_value_t *)ret {
    *ret = cpp_ethash_light_compute(light, header_hash, nonce);
}

@end

