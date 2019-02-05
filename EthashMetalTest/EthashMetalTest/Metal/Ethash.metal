//
//  Ethash.metal
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 24/01/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#include <metal_stdlib>
//#include <metal_common>
//#include <simd/simd.h>

#include "Ethash.h"

using namespace metal;

#include "keccak.metal"

kernel void ethash_keccak(
                          device ethash_uint8_t *in [[ buffer(0) ]],
                          device ethash_uint32_t &size  [[ buffer(1) ]],
                          device ethash_h256_t *ret [[ buffer(2) ]],
                          device ethash_int32_t *result  [[ buffer(3) ]],
                          ethash_uint32_t id [[ thread_position_in_grid ]]
                          )
{
    *result = -1;
    const size_t out_bytes = sizeof(ethash_h256_t);
//    const size_t out_bytes = ETHASH_SHORT_HASH_BYTES;
    *result = keccak::keccak_256(in, size, (device ethash_uint8_t *)ret, out_bytes);
}
