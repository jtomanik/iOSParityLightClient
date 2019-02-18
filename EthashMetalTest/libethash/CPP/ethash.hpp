//
//  Ethash.h
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 06/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#ifndef ethash_cpp
#define ethash_cpp

#include <stdio.h>

#include "../Ethash.h"
#include "../data_sizes.h"

#include "keccak.hpp"
#include "internal.hpp"

#ifdef __cplusplus
extern "C" {
#endif

void cpp_ethash_keccak_256(
                           ethash_uint8_t *in,
                           ethash_uint32_t size,
                           ethash_h256_t *ret,
                           ethash_int32_t *result
                           )
{
    *result = -1;
    const size_t out_bytes = sizeof(ethash_h256_t);
    *result = keccak_256(in, size, (ethash_uint8_t *)ret, out_bytes);
}

void cpp_ethash_keccak_512(
                           ethash_uint8_t *in,
                           ethash_uint32_t size,
                           ethash_node_t *ret,
                           ethash_int32_t *result
                           )
{
    *result = -1;
    const size_t out_bytes = sizeof(ethash_node_t);
    *result = keccak_512(in, size, (ethash_uint8_t *)ret, out_bytes);
}

void cpp_ethash_get_seedhash(
                             ethash_uint64_t *blocknumber,
                             ethash_h256_t *ret
                             )
{
    ethash_uint64_t block_number = *blocknumber;
    *ret = ethash_get_seedhash(block_number);
}

ethash_uint64_t cpp_ethash_get_cachesize(const ethash_uint64_t block_number)
{
    return ethash_get_cachesize(block_number);
}

ethash_uint32_t cpp_ethash_get_cache_node_number(const ethash_uint64_t block_number)
{
    return ethash_get_cache_node_number(block_number);
}

bool cpp_ethash_compute_cache_nodes(
                                    ethash_node_t *const nodes,
                                    const ethash_uint64_t cache_size,
                                    const ethash_h256_t *const seed
                                    )
{
    return ethash_compute_cache_nodes(nodes, cache_size, seed);
}

ethash_light_ptr cpp_ethash_light_new_with_cache(
                                             const ethash_uint64_t block_number,
                                             const ethash_node_t *const nodes,
                                             const ethash_uint64_t cache_size
                                             )
{
    return ethash_light_new_with_cache(block_number, nodes, cache_size);
}

void cpp_ethash_calculate_dag_item(
                               DEVICESPACE(ethash_node_t) *const ret,
                               const ethash_uint32_t node_index,
                               const DEVICESPACE(ethash_light_ptr) light
                               )
{
    ethash_calculate_dag_item(ret, node_index, light);
}

ethash_return_value_t cpp_ethash_light_compute(
                                           ethash_light_ptr light,
                                           const ethash_h256_t header_hash,
                                           const ethash_uint64_t nonce
                                           )
{
    return ethash_light_compute(light, header_hash, nonce);
}

#ifdef __cplusplus
}
#endif
#endif /* ethash_cpp */

