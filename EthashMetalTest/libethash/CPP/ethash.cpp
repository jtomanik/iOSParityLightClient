//
//  Ethash.cpp
//  GPUEthashTest
//
//  Created by Jakub Tomanik on 06/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#include "Ethash.h"
#include "keccak.hpp"

void cpp_ethash_keccak(
                          ethash_uint8_t *in,
                          ethash_uint32_t size,
                          ethash_h256_t *ret,
                          ethash_int32_t *result
                          )
{
    *result = -1;
    const size_t out_bytes = sizeof(ethash_h256_t);
    //    const size_t out_bytes = ETHASH_SHORT_HASH_BYTES;
    *result = keccak::keccak_256(in, size, (ethash_uint8_t *)ret, out_bytes);
}
