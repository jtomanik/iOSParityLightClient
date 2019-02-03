/*
 This file is part of ethash.
 
 ethash is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 ethash is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with ethash.  If not, see <http://www.gnu.org/licenses/>.
 */

/** @file ethash.h
 * @date 2015
 */
#pragma once

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stddef.h>

#define ETHASH_REVISION 23
#define ETHASH_DATASET_BYTES_INIT 1073741824U // bytes in dataset at genesis 2**30
#define ETHASH_DATASET_BYTES_GROWTH 8388608U  // dataset growth per epoch 2**23
#define ETHASH_CACHE_BYTES_INIT 1073741824U // bytes in cache at genesis 2**24
#define ETHASH_CACHE_BYTES_GROWTH 131072U  // cache growth per epoch 2**17
#define ETHASH_EPOCH_LENGTH 30000U // blocks per epoch
#define ETHASH_WORD_BYTES 4 // bytes in word, 32 bits
#define ETHASH_MIX_BYTES 128 // width of mix, 1024 bits
#define ETHASH_HASH_BYTES 64 // hash length in bytes, 512bits
#define ETHASH_DATASET_PARENTS 256 // number of parents of each dataset element
#define ETHASH_CACHE_ROUNDS 3 // number of rounds in cache production
#define ETHASH_ACCESSES 64 // number of accesses in hashimoto loop
#define ETHASH_DAG_MAGIC_NUM_SIZE 8
#define ETHASH_DAG_MAGIC_NUM 0xFEE1DEADBADDCAFE

// compile time settings
#define NODE_WORDS (ETHASH_HASH_BYTES / ETHASH_WORD_BYTES)
#define MIX_WORDS (ETHASH_MIX_BYTES / ETHASH_WORD_BYTES)
#define MIX_NODES (MIX_WORDS / NODE_WORDS)

#ifdef __cplusplus
extern "C" {
#endif
    typedef unsigned char ethash_uint8_t;
    typedef unsigned int ethash_uint32_t;
    typedef unsigned long long ethash_uint64_t;
    
    /// Type of a seedhash/blockhash e.t.c.
    typedef struct ethash_h256 { ethash_uint8_t b[32]; } ethash_h256_t;
    
    // convenience macro to statically initialize an h256_t
    // usage:
    // ethash_h256_t a = ethash_h256_static_init(1, 2, 3, ... )
    // have to provide all 32 values. If you don't provide all the rest
    // will simply be unitialized (not guranteed to be 0)
#define ethash_h256_static_init(...)			\
{ {__VA_ARGS__} }
    
    typedef struct ethash_light {
        const void *cache;
        ethash_uint64_t cache_size;
        ethash_uint64_t block_number;
    } ethash_light_t;
    typedef struct ethash_light *ethash_light_ptr;
    
    struct ethash_full;
    typedef struct ethash_full *ethash_full_t;
    
    typedef int(*ethash_callback_t)(unsigned);
    
    typedef struct ethash_return_value {
        ethash_h256_t result;
        ethash_h256_t mix_hash;
        bool success;
    } ethash_return_value_t;
    
    typedef union ethash_node {
        ethash_uint8_t bytes[NODE_WORDS * 4];
        ethash_uint32_t words[NODE_WORDS];
        ethash_uint64_t double_words[NODE_WORDS / 2];
    } ethash_node_t;
    
    ethash_uint64_t ethash_get_epoch_number(const ethash_uint64_t block_number);
    ethash_uint64_t ethash_get_datasize(const ethash_uint64_t block_number);
    ethash_uint64_t ethash_get_cachesize(const ethash_uint64_t block_number);
    ethash_h256_t ethash_get_seedhash(const ethash_uint64_t block_number);
    ethash_uint32_t ethash_get_cache_node_number(const ethash_uint64_t block_number);

    bool ethash_compute_cache_nodes(
                                    ethash_node_t *const nodes,
                                    const ethash_uint64_t cache_size,
                                    const ethash_h256_t *const seed
                                    );
    ethash_light_ptr ethash_light_new(const ethash_uint64_t block_number);
    ethash_light_ptr ethash_light_new_with_cache(
                                                 const ethash_uint64_t block_number,
                                                 const ethash_node_t *const nodes,
                                                 const ethash_uint64_t cache_size
                                                 );
    void ethash_light_delete_without_cache(ethash_light_ptr light);
    void ethash_light_delete(ethash_light_ptr light);
    ethash_return_value_t ethash_light_compute(
                                               ethash_light_ptr light,
                                               const ethash_h256_t header_hash,
                                               const ethash_uint64_t nonce
                                               );
    bool ethash_hash(
                            ethash_return_value_t *const ret,
                            const ethash_node_t *full_nodes,
                            const ethash_light_ptr light,
                            const ethash_uint64_t full_size,
                            const ethash_h256_t header_hash,
                            const ethash_uint64_t nonce
                            );

    ethash_h256_t ethash_keccak_256(
                                     const ethash_uint8_t *const in,
                                     const size_t size
                                     );

    ethash_node_t ethash_keccak_512(
                                     const ethash_uint8_t *const in,
                                     const size_t size
                                     );
    void ethash_calculate_dag_item(
                                   ethash_node_t *const ret,
                                   const ethash_uint32_t node_index,
                                   const ethash_light_ptr light
                                   );
#ifdef __cplusplus
}
#endif

