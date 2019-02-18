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
    if (upper_blocknumber > 0) {
        block_number = block_number | upper_blocknumber;
        block_number = block_number << 32;
    }
    block_number = block_number | lower_blocknumber;
    return block_number;
}


kernel void ethash_keccak_256(
                              device ethash_uint8_t *in [[ buffer(0) ]],
                              device ethash_uint32_t &size  [[ buffer(1) ]],
                              device ethash_h256_t *ret [[ buffer(2) ]],
                              device ethash_int32_t *result  [[ buffer(3) ]],
                              ethash_uint32_t id [[ thread_position_in_grid ]]
                              )
{
    *result = -1;
    const size_t out_bytes = sizeof(ethash_h256_t);
    *result = keccak_256(in, size, (device ethash_uint8_t *)ret, out_bytes);
}

kernel void ethash_keccak_512(
                              device ethash_uint8_t *in [[ buffer(0) ]],
                              device ethash_uint32_t &size  [[ buffer(1) ]],
                              device ethash_uint8_t *ret [[ buffer(2) ]],
                              device ethash_int32_t *result  [[ buffer(3) ]],
                              ethash_uint32_t id [[ thread_position_in_grid ]]
                              )
{
    *result = -1;
    const size_t out_bytes = sizeof(ethash_node_t);
    *result = keccak_512(in, size, (device ethash_uint8_t *)ret, out_bytes);
}

kernel void ethash_get_seedhash(
                                device ethash_uint32_t &lower_blocknumber  [[ buffer(0) ]],
                                device ethash_uint32_t &upper_blocknumber  [[ buffer(1) ]],
                                device ethash_h256_t *ret [[ buffer(2) ]],
                                ethash_uint32_t id [[ thread_position_in_grid ]]
                                )
{
    ethash_uint64_t block_number = join_blocknumber(lower_blocknumber, upper_blocknumber);
    ethash_get_seedhash(block_number, ret);
}

#endif /* ethash_metal */
