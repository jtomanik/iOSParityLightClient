#pragma once
#include "ethash.h"
#include <stdio.h>
#include <sys/mman.h>

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

//    static inline ethash_uint8_t ethash_h256_get(
//                                                 ethash_h256_t const* hash,
//                                                 unsigned int i
//                                                 )
//    {
//        return hash->b[i];
//    }
//
//    static inline void ethash_h256_set(
//                                       ethash_h256_t* hash,
//                                       unsigned int i,
//                                       ethash_uint8_t v
//                                       )
//    {
//        hash->b[i] = v;
//    }

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

    ethash_light_t* ethash_light_new_internal(
                                               const ethash_uint64_t cache_size,
                                               ethash_h256_t const* seed
                                               );

    void ethash_calculate_dag_item(
                                   ethash_node_t *const ret,
                                   const ethash_uint32_t node_index,
                                   ethash_light_t *light
                                   );

    ethash_uint64_t ethash_get_datasize(const ethash_uint64_t block_number);
    
    ethash_uint64_t ethash_get_cachesize(const ethash_uint64_t block_number);

#ifdef __cplusplus
}
#endif
