//
//  keccak.hpp
//  GPUEthashTest
//
//  Created by Jakub Tomanik on 06/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#ifndef keccak_hpp
#define keccak_hpp

#include "../Ethash.h"
#include "../data_sizes.h"

/******** The Keccak-f[1600] permutation ********/

#define KECCAK_ROUNDS 24

/*** Constants. ***/
CONSTSPACE ethash_uint8_t rho[24] = {
    1,  3,  6, 10, 15, 21, 28, 36,
    45, 55,  2, 14, 27, 41, 56,  8,
    25, 43, 62, 18, 39, 61, 20, 44
};

CONSTSPACE ethash_uint8_t keccak_pi[24] = {
    10,  7, 11, 17, 18,  3,  5, 16,
    8, 21, 24,  4, 15, 23, 19, 13,
    12,  2, 20, 14, 22,  9,  6,  1
};

CONSTSPACE ethash_uint64_t RC[24] = {
    0x0000000000000001, 0x0000000000008082, 0x800000000000808a, 0x8000000080008000,
    0x000000000000808b, 0x0000000080000001, 0x8000000080008081, 0x8000000000008009,
    0x000000000000008a, 0x0000000000000088, 0x0000000080008009, 0x000000008000000a,
    0x000000008000808b, 0x800000000000008b, 0x8000000000008089, 0x8000000000008003,
    0x8000000000008002, 0x8000000000000080, 0x000000000000800a, 0x800000008000000a,
    0x8000000080008081, 0x8000000000008080, 0x0000000080000001, 0x8000000080008008
};

ethash_int32_t keccak_256(
                          const DEVICESPACE(ethash_uint8_t) *const in,
                          const ethash_uint64_t inlen,
                          DEVICESPACE(ethash_uint8_t) *const out,
                          const ethash_uint64_t outlen
                          );

ethash_int32_t keccak_512(
                          const DEVICESPACE(ethash_uint8_t) *const in,
                          const ethash_uint64_t inlen,
                          DEVICESPACE(ethash_uint8_t) *const out,
                          const ethash_uint64_t outlen
                          );

#if defined(__METAL_MACOS__) || defined(__METAL_IOS__)


#else

#include <stdio.h>

#endif

#endif /* keccak_hpp */
