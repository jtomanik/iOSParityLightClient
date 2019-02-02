#pragma once
#include "ethash.h"
#include <stdio.h>
#include <sys/mman.h>

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

#define FNV_PRIME 0x01000193

    static inline ethash_uint32_t fnv_hash(ethash_uint32_t const x, ethash_uint32_t const y)
    {
        return x * FNV_PRIME ^ y;
    }

    static inline ethash_uint8_t ethash_h256_get(
                                                 ethash_h256_t const* hash,
                                                 unsigned int i
                                                 )
    {
        return hash->b[i];
    }

    static inline void ethash_h256_set(
                                       ethash_h256_t* hash,
                                       unsigned int i,
                                       ethash_uint8_t v
                                       )
    {
        hash->b[i] = v;
    }

    static inline void ethash_h256_reset(
                                         ethash_h256_t* hash
                                         )
    {
        memset(hash, 0, 32);
    }

    static inline void ethash_node_reset(
                                         ethash_node_t* node
                                         )
    {
        memset(node, 0, 64);
    }

    ethash_light_ptr ethash_light_new_internal(
                                               ethash_uint64_t cache_size,
                                               ethash_h256_t const* seed
                                               );

    void ethash_calculate_dag_item(
                                   ethash_node_t* const ret,
                                   ethash_uint32_t node_index,
                                   ethash_light_ptr const cache
                                   );

    ethash_uint64_t ethash_get_datasize(ethash_uint64_t const block_number);
    
    ethash_uint64_t ethash_get_cachesize(ethash_uint64_t const block_number);

#ifdef __cplusplus
}
#endif
