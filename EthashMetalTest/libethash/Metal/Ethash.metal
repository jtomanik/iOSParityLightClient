//
//  Ethash.metal
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 24/01/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#ifndef ethash_metal
#define ethash_metal

#include <metal_stdlib>
//#include <metal_common>
//#include <simd/simd.h>


using namespace metal;

#include "ethash.h"
#include "../data_sizes.h"

#include "../CPP/internal.hpp"
#include "../CPP/keccak.hpp"
#include "../CPP/mem.hpp"

#include "../CPP/keccak.cpp"
#include "../CPP/internal.cpp"

ethash_uint64_t join_blocknumber(
                                 ethash_uint32_t lower_blocknumber,
                                 ethash_uint32_t upper_blocknumber)
{
    ethash_uint64_t block_number = 0;
    block_number = (ethash_uint64_t)upper_blocknumber << 32 | (ethash_uint64_t)lower_blocknumber;
    return block_number;
}


kernel void ethash_keccak_256(
                              device ethash_uint8_t *in [[ buffer(0) ]],
                              device ethash_uint32_t &size [[ buffer(1) ]],
                              device ethash_h256_t *ret [[ buffer(2) ]],
                              device ethash_int32_t *result [[ buffer(3) ]],
                              ethash_uint32_t id [[ thread_position_in_grid ]]
                              )
{
    *result = -1;
    const size_t out_bytes = sizeof(ethash_h256_t);
    *result = keccak_256_device(in, size, (device ethash_uint8_t *)ret, out_bytes);
}

kernel void ethash_keccak_512(
                              device ethash_uint8_t *in [[ buffer(0) ]],
                              device ethash_uint32_t &size [[ buffer(1) ]],
                              device ethash_uint8_t *ret [[ buffer(2) ]], // ethash_node_t
                              device ethash_int32_t *result [[ buffer(3) ]],
                              ethash_uint32_t id [[ thread_position_in_grid ]]
                              )
{
    *result = -1;
    const size_t out_bytes = sizeof(ethash_node_t);
    *result = keccak_512_device(in, size, (device ethash_uint8_t *)ret, out_bytes);
}

kernel void ethash_get_seedhash(
                                device ethash_uint32_t &lower_blocknumber [[ buffer(0) ]],
                                device ethash_uint32_t &upper_blocknumber [[ buffer(1) ]],
                                device ethash_h256_t *ret [[ buffer(2) ]],
                                ethash_uint32_t id [[ thread_position_in_grid ]]
                                )
{
    ethash_uint32_t lower = lower_blocknumber;
    ethash_uint32_t upper = upper_blocknumber;
    ethash_uint64_t block_number = 486382; //join_blocknumber(lower, upper); //
    ethash_get_seedhash_device(block_number, ret);
}

kernel void ethash_compute_cache_nodes(
                                       device ethash_uint32_t &lower_blocknumber [[ buffer(0) ]],
                                       device ethash_uint32_t &upper_blocknumber [[ buffer(1) ]],
                                       device ethash_uint8_t *nodes [[ buffer(2) ]], // ethash_node_t
                                       ethash_uint32_t id [[ thread_position_in_grid ]]
                                       )
{
    ethash_uint32_t lower = lower_blocknumber;
    ethash_uint32_t upper = upper_blocknumber;
    ethash_uint64_t block_number = 486382; //join_blocknumber(lower, upper); //
    ethash_uint64_t cache_size = 18874304;//ethash_get_cachesize(block_number);
    ethash_h256_t seed = {241, 175,  44, 134,  39, 121, 245, 239, 228, 236,  43, 160, 195, 152,  46,   7, 199,   5, 253, 147, 241, 206,  98,  43,   3, 104,  17,  40, 192,  79, 106, 162};
//    ethash_get_seedhash_thread(block_number, &seed);
    device ethash_node_t *const device_nodes = (device ethash_node_t *const)nodes;
    thread ethash_h256_t *const seed_ptr = &seed;
    ethash_compute_cache_nodes_device_and_thread(device_nodes, cache_size, seed_ptr);
}

#endif /* ethash_metal */
