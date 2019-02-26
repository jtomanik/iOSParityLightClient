//
//  common.h
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 23/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#ifndef ethash_common
#define ethash_common

#include "Ethash.h"

#define fix_endian64(dst_, src_) dst_ = src_
#define fix_endian_arr32(arr_, size_)

#ifdef __cplusplus
extern "C" {
#endif

    static inline ethash_uint32_t ethash_get_word(
                                                  void const* data,
                                                  ethash_uint32_t i
                                                  )
    {
        ethash_uint32_t *converted =  (ethash_uint32_t *)data;
        return converted[i];
    }

    static inline void ethash_set_word(
                                                  void const* data,
                                                  ethash_uint32_t i,
                                                  ethash_uint32_t value
                                                  )
    {
        ethash_uint32_t *converted =  (ethash_uint32_t *)data;
        converted[i] = value;
    }

    static inline ethash_uint32_t ethash_node_get_word(
                                                       ethash_node_t const* hash,
                                                       ethash_uint32_t i
                                                       )
    {
        return ethash_get_word(hash, i);
    }



    static inline void ethash_node_set_word(
                                            ethash_node_t const* hash,
                                            ethash_uint32_t i,
                                            ethash_uint32_t value
                                            )
    {
        ethash_set_word(hash, i, value);
    }

#define LOOP_BODY(type, op) \
ethash_uint32_t *in_buffer_32 = (ethash_uint32_t *)src;             \
ethash_uint32_t *out_buffer_32 = (ethash_uint32_t *)dst;            \
ethash_uint64_t len_32 = sizeof(type) / MEMORY_BUS_BYTES;           \
do {                                                                \
    for (ethash_uint64_t i = 0; i < len_32; i += 1)                 \
    {                                                               \
        out_buffer_32[i] op in_buffer_32[i];                        \
    }                                                               \
} while (0);

    static inline void ethash_xor_hashes(ethash_h256_t *src, ethash_h256_t *dst) {
//        ethash_uint32_t *in_buffer_32 = (ethash_uint32_t *)src;
//        ethash_uint32_t *out_buffer_32 = (ethash_uint32_t *)dst;
//        ethash_uint64_t len_32 = sizeof(ethash_h256_t) / MEMORY_BUS_BYTES;
//        do {
//            for (ethash_uint64_t i = 0; i < len_32; i += 1)
//            {
//                out_buffer_32[i] ^= in_buffer_32[i];
//            }
//        } while (0);
        LOOP_BODY(ethash_h256_t, ^=)
    }

    static inline void ethash_xor_nodes(ethash_node_t *src, ethash_node_t *dst) {
//        ethash_uint32_t *in_buffer_32 = (ethash_uint32_t *)src;
//        ethash_uint32_t *out_buffer_32 = (ethash_uint32_t *)dst;
//        ethash_uint64_t len_32 = sizeof(ethash_node_t) / MEMORY_BUS_BYTES;
//        do {
//            for (ethash_uint64_t i = 0; i < len_32; i += 1)
//            {
//                out_buffer_32[i] ^= in_buffer_32[i];
//            }
//        } while (0);
        LOOP_BODY(ethash_node_t, ^=)
    }

    static inline void copy_ethash_h256(
                                        void *src,
                                        ethash_h256_t *dst
                                        )
    {
//        ethash_uint32_t *in_buffer_32 = (ethash_uint32_t *)src;
//        ethash_uint32_t *out_buffer_32 = (ethash_uint32_t *)dst;
//        ethash_uint64_t len_32 = sizeof(ethash_h256_t) / MEMORY_BUS_BYTES;
//        do {
//            for (ethash_uint64_t i = 0; i < len_32; i += 1)
//            {
//                out_buffer_32[i] = in_buffer_32[i];
//            }
//        } while (0);
        LOOP_BODY(ethash_h256_t, =)
    }

    static inline void copy_ethash_node(
                                        void *src,
                                        ethash_node_t *dst
                                        )
    {
//        ethash_uint32_t *in_buffer_32 = (ethash_uint32_t *)src;
//        ethash_uint32_t *out_buffer_32 = (ethash_uint32_t *)dst;
//        ethash_uint64_t len_32 = sizeof(ethash_node_t) / MEMORY_BUS_BYTES;
//        do {
//            for (ethash_uint64_t i = 0; i < len_32; i += 1)
//            {
//                out_buffer_32[i] = in_buffer_32[i];
//            }
//        } while (0);
        LOOP_BODY(ethash_node_t, =)
    }

#ifdef __cplusplus
}
#endif

#endif /* ethash_common */
