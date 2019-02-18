//
//  internal.hpp
//  GPUEthashTest
//
//  Created by Jakub Tomanik on 12/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#ifndef internal_hpp
#define internal_hpp

#include "../Ethash.h"
#include "../data_sizes.h"

#include "mem.hpp"

static inline ethash_uint32_t fnv_hash(const ethash_uint32_t x, const ethash_uint32_t y)
{
    return x * FNV_PRIME ^ y;
}

static inline void ethash_h256_reset(DEVICESPACE(ethash_h256_t) *hash)
{
    //    memset(hash, 0, 32);
    mem_clear_device(hash, sizeof(ethash_h256_t));
}

static inline void ethash_node_reset(DEVICESPACE(ethash_node_t) *node)
{
    mem_clear_device(node, sizeof(ethash_node_t));
}

static ethash_uint64_t ethash_get_epoch_number(const ethash_uint64_t block_number)
{
    //    assert(block_number / ETHASH_EPOCH_LENGTH < 2048);
    return block_number / ETHASH_EPOCH_LENGTH;
}

static ethash_uint64_t ethash_get_datasize(const ethash_uint64_t block_number)
{
    //    assert(block_number / ETHASH_EPOCH_LENGTH < 2048);
    return dag_sizes[block_number / ETHASH_EPOCH_LENGTH];
}

static ethash_uint64_t ethash_get_cachesize(const ethash_uint64_t block_number)
{
    //    assert(block_number / ETHASH_EPOCH_LENGTH < 2048);
    return cache_sizes[block_number / ETHASH_EPOCH_LENGTH];
}

static ethash_uint32_t ethash_get_cache_node_number(const ethash_uint64_t block_number)
{
    const ethash_uint64_t cache_size = ethash_get_cachesize(block_number);
    //    assert(cache_size % sizeof(ethash_node_t) == 0);
    const ethash_uint32_t num_nodes = (ethash_uint32_t) (cache_size / sizeof(ethash_node_t));
    return num_nodes;
}

ethash_h256_t ethash_get_seedhash(const ethash_uint64_t block_number);

bool ethash_compute_cache_nodes(
                                DEVICESPACE(ethash_node_t) *const nodes,
                                const ethash_uint64_t cache_size,
                                const DEVICESPACE(ethash_h256_t) *const seed
                                );

ethash_light_ptr ethash_light_new_with_cache(
                                             const ethash_uint64_t block_number,
                                             const DEVICESPACE(ethash_node_t) *const nodes,
                                             const ethash_uint64_t cache_size
                                             );

void ethash_calculate_dag_item(
                               DEVICESPACE(ethash_node_t) *const ret,
                               const ethash_uint32_t node_index,
                               const DEVICESPACE(ethash_light_ptr) light
                               );

ethash_return_value_t ethash_light_compute(
                                           ethash_light_ptr light,
                                           const ethash_h256_t header_hash,
                                           const ethash_uint64_t nonce
                                           );

#if defined(__METAL_MACOS__) || defined(__METAL_IOS__)

#else
#include <stdio.h>
#include <cstdlib>

#endif

#endif /* internal_hpp */
