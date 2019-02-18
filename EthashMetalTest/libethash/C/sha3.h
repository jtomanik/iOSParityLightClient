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
    
#ifdef __cplusplus
}
#endif
