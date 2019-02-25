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
    size_t out_bytes = sizeof(ethash_h256_t);
    *result = keccak_256_device(in, size, (ethash_uint8_t *)ret, out_bytes);
}

void cpp_ethash_keccak_512(
                           ethash_uint8_t *in,
                           ethash_uint32_t size,
                           ethash_node_t *ret,
                           ethash_int32_t *result
                           )
{
    *result = -1;
    size_t out_bytes = sizeof(ethash_node_t);
    *result = keccak_512_device(in, size, (ethash_uint8_t *)ret, out_bytes);
}

void cpp_ethash_get_seedhash(
                             ethash_uint64_t *blocknumber,
                             ethash_h256_t *ret
                             )
{
    ethash_uint64_t block_number = *blocknumber;
    ethash_get_seedhash_device(block_number, ret);
}

ethash_uint64_t cpp_ethash_get_cachesize(ethash_uint64_t block_number)
{
    return ethash_get_cachesize(block_number);
}

ethash_uint32_t cpp_ethash_get_cache_node_number(ethash_uint64_t block_number)
{
    return ethash_get_cache_node_number(block_number);
}

bool cpp_ethash_compute_cache_nodes(
                                    ethash_node_t *nodes,
                                    ethash_uint64_t cache_size,
                                    ethash_h256_t *seed
                                    )
{
//    return ethash_compute_cache_nodes_device(nodes, cache_size, seed);
    return ethash_compute_cache_nodes_device_and_thread(nodes, cache_size, seed);
}

ethash_light_t* cpp_ethash_light_new_with_cache(
                                             ethash_uint64_t block_number,
                                             ethash_node_t *nodes,
                                             ethash_uint64_t cache_size
                                             )
{
    DEVICESPACE(ethash_light_t) *ret;
    ret = (ethash_light_t *)calloc(sizeof(ethash_light_t), 1);
    if (!ret) {
        return NULL;
    }
    ethash_light_new_with_cache(block_number, nodes, cache_size, ret);
    return ret;
}

void cpp_ethash_calculate_dag_item(
                               DEVICESPACE(ethash_node_t) *ret,
                               ethash_uint32_t node_index,
                               DEVICESPACE(ethash_light_t) *light
                               )
{
    ethash_calculate_dag_item_device(ret, node_index, light);
}

void cpp_ethash_light_compute(
                                               ethash_light_t *light,
                                               ethash_h256_t header_hash,
                                               ethash_uint64_t nonce,
                                               ethash_return_value_t *ret
                                               )
{
    ethash_light_compute(light, header_hash, nonce, ret);
}


#ifdef __cplusplus
}
#endif
#endif /* ethash_cpp */
