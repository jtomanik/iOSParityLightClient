//
//  NSObject+EthashObjCPP.h
//  CmdTestCpp
//
//  Created by Jakub Tomanik on 14/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "../Ethash.h"
#include "../data_sizes.h"

NS_ASSUME_NONNULL_BEGIN

@interface EthashObjCPP : NSObject

+ (void) ethashKeccak256From:(ethash_uint8_t *)data withSize:(ethash_uint32_t)size returning:(ethash_h256_t *)ret andResult: (ethash_int32_t *)result;
+ (void) ethashKeccak512From:(ethash_uint8_t *)data withSize:(ethash_uint32_t)size returning:(ethash_node_t *)ret andResult: (ethash_int32_t *)result;
+ (void) ethashGetSeedhashFor:(ethash_uint64_t *)blocknumber returning:(ethash_h256_t *)ret;
+ (void) ethashGetCacheSizeFor:(ethash_uint64_t *)blocknumber returning:(ethash_uint64_t *)ret;
+ (void) ethashGetCacheNodeNumberFor:(ethash_uint64_t *)blocknumber returning:(ethash_uint32_t *)ret;
+ (bool) ethashComputeCacheNodes:(ethash_node_t *)nodes cacheSize:(ethash_uint64_t)cache_size andSeed:(ethash_h256_t *)seed;
+ (ethash_light_t *) ethashNewLightClientFor:(ethash_uint64_t)block_number withCache:(ethash_node_t *)nodes ofSize:(ethash_uint64_t)cache_size;
+ (void) ethashCalculateDAGItemFor:(ethash_uint32_t)nodeIndex andLightClient:(ethash_light_t *)light returning:(ethash_node_t *) ret;
+ (void) ethashLightCompute:(ethash_light_t *)light forHeader:(ethash_h256_t)header_hash andNonce:(ethash_uint64_t)nonce returning:(ethash_return_value_t *)ret;
@end

NS_ASSUME_NONNULL_END
