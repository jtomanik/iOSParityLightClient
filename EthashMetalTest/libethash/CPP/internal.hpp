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

static inline ethash_uint32_t fnv_hash_32(ethash_uint32_t x, ethash_uint32_t y)
{
    return x * FNV_PRIME ^ y;
}

static inline void ethash_h256_reset_thread(THREADSPACE(ethash_h256_t) *hash)
{
    mem_clear_thread(hash, sizeof(ethash_h256_t));
}

static inline void ethash_h256_reset_device(DEVICESPACE(ethash_h256_t) *hash)
{
    mem_clear_device(hash, sizeof(ethash_h256_t));
}

static inline void ethash_node_reset_device(DEVICESPACE(ethash_node_t) *node)
{
    mem_clear_device(node, sizeof(ethash_node_t));
}

static inline void ethash_node_reset_thread(THREADSPACE(ethash_node_t) *node)
{
    mem_clear_thread(node, sizeof(ethash_node_t));
}

static ethash_uint64_t ethash_get_epoch_number(ethash_uint64_t block_number)
{
    //    assert(block_number / ETHASH_EPOCH_LENGTH < 2048);
    return block_number / ETHASH_EPOCH_LENGTH;
}

static ethash_uint64_t ethash_get_datasize(ethash_uint64_t block_number)
{
    //    assert(block_number / ETHASH_EPOCH_LENGTH < 2048);
    return dag_sizes[block_number / ETHASH_EPOCH_LENGTH];
}

static ethash_uint64_t ethash_get_cachesize(ethash_uint64_t block_number)
{
    //    assert(block_number / ETHASH_EPOCH_LENGTH < 2048);
    return cache_sizes[block_number / ETHASH_EPOCH_LENGTH];
}

static ethash_uint32_t ethash_get_cache_node_number(ethash_uint64_t block_number)
{
    ethash_uint64_t cache_size = ethash_get_cachesize(block_number);
    //    assert(cache_size % sizeof(ethash_node_t) == 0);
    ethash_uint32_t num_nodes = (ethash_uint32_t) (cache_size / sizeof(ethash_node_t));
    return num_nodes;
}

void ethash_get_seedhash_device(
                                ethash_uint64_t block_number,
                                DEVICESPACE(ethash_h256_t) *ret
                                );

void ethash_get_seedhash_thread(
                                ethash_uint64_t block_number,
                                THREADSPACE(ethash_h256_t) *ret
                                );

bool ethash_compute_cache_nodes_device(
                                       DEVICESPACE(ethash_node_t) *nodes,
                                       ethash_uint64_t cache_size,
                                       DEVICESPACE(ethash_h256_t) *seed
                                       );

bool ethash_compute_cache_nodes_device_and_thread(
                                                  DEVICESPACE(ethash_node_t) *nodes,
                                                  ethash_uint64_t cache_size,
                                                  THREADSPACE(ethash_h256_t) *seed
                                                  );

void ethash_light_new_with_cache(
                                 ethash_uint64_t block_number,
                                 DEVICESPACE(ethash_node_t) *nodes,
                                 ethash_uint64_t cache_size,
                                 DEVICESPACE(ethash_light_t) *ret
                                 );

void ethash_calculate_dag_item_device(
                                      DEVICESPACE(ethash_node_t) *ret,
                                      ethash_uint32_t node_index,
                                      DEVICESPACE(ethash_light_t) *light
                                      );

void ethash_calculate_dag_item_thread(
                                      THREADSPACE(ethash_node_t) *ret,
                                      ethash_uint32_t node_index,
                                      DEVICESPACE(ethash_light_t) *light
                                      );

void ethash_light_compute(
                          DEVICESPACE(ethash_light_t) *light,
                          ethash_h256_t header_hash,
                          ethash_uint64_t nonce,
                          DEVICESPACE(ethash_return_value_t) *ret
                          );

#if defined(__METAL_MACOS__) || defined(__METAL_IOS__)

#else
#include <stdio.h>
#include <cstdlib>

#endif

#endif /* internal_hpp */
