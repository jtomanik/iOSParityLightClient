#pragma once

#ifdef __cplusplus
extern "C" {
#endif
    
#include <stdint.h>
#include <stdlib.h>
#include "ethash.h"
    
    struct ethash_h256;
    
    int keccak_256(
                 const ethash_uint8_t* in,
                 size_t inlen,
                 ethash_uint8_t* out,
                 size_t outlen
                 );

    int keccak_512(
                 const ethash_uint8_t* in,
                 size_t inlen,
                 ethash_uint8_t* out,
                 size_t outlen
                 );
    
    static inline void SHA3_256(
                                struct ethash_h256 const* ret,
                                ethash_uint8_t const* data,
                                size_t const size)
    {
        keccak_256(data, size, (ethash_uint8_t*)ret, 32);
    }
    
    static inline void SHA3_512(
                                ethash_uint8_t* ret,
                                ethash_uint8_t const* data,
                                size_t const size)
    {
        keccak_512(data, size, ret, 64);
    }
    
#ifdef __cplusplus
}
#endif
