#pragma once

#ifdef __cplusplus
extern "C" {
#endif
    
#include <stdint.h>
#include <stdlib.h>
#include "ethash.h"
    
    struct ethash_h256;
    
    int keccak_256(
                 const ethash_uint8_t *const in,
                 const size_t inlen,
                 ethash_uint8_t *const out,
                 const size_t outlen
                 );

    int keccak_512(
                 const ethash_uint8_t *const in,
                 const size_t inlen,
                 ethash_uint8_t *const out,
                 const size_t outlen
                 );
    
    static inline void SHA3_256(
                                struct ethash_h256 *const ret,
                                const ethash_uint8_t *const data,
                                const size_t size)
    {
        keccak_256(data, size, (ethash_uint8_t*)ret, 32);
    }
    
    static inline void SHA3_512(
                                ethash_uint8_t *const ret,
                                const ethash_uint8_t *const data,
                                const size_t size)
    {
        keccak_512(data, size, ret, 64);
    }
    
#ifdef __cplusplus
}
#endif
