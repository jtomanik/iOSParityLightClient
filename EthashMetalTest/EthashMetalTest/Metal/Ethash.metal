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
                          device const ethash_uint8_t *const in [[ buffer(0) ]],
                          constant ethash_uint32_t &size  [[ buffer(1) ]],
                          device ethash_h256_t *const ret [[ buffer(2) ]]
                          )
{
    device const ethash_uint8_t *const data = in;
    const size_t data_len = (size_t)size;
    device ethash_uint8_t *const byte_out = (device ethash_uint8_t *const)ret;
    const size_t out_bytes = sizeof(ethash_h256_t);
    int result = keccak::keccak_256(data, data_len, byte_out, out_bytes);
}
