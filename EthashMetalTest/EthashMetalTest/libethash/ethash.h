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
#define ETHASH_DATASET_BYTES_INIT 1073741824U // 2**30
#define ETHASH_DATASET_BYTES_GROWTH 8388608U  // 2**23
#define ETHASH_CACHE_BYTES_INIT 1073741824U // 2**24
#define ETHASH_CACHE_BYTES_GROWTH 131072U  // 2**17
#define ETHASH_EPOCH_LENGTH 30000U
#define ETHASH_MIX_BYTES 128
#define ETHASH_HASH_BYTES 64
#define ETHASH_DATASET_PARENTS 256
#define ETHASH_CACHE_ROUNDS 3
#define ETHASH_ACCESSES 64
#define ETHASH_DAG_MAGIC_NUM_SIZE 8
#define ETHASH_DAG_MAGIC_NUM 0xFEE1DEADBADDCAFE

// compile time settings
#define NODE_WORDS (64/4)
#define MIX_WORDS (ETHASH_MIX_BYTES/4)
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
        void* cache;
        ethash_uint64_t cache_size;
        ethash_uint64_t block_number;
    } ethash_light_t;
    typedef struct ethash_light* ethash_light_ptr;
    
    struct ethash_full;
    typedef struct ethash_full* ethash_full_t;
    
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
    
    ethash_uint64_t ethash_get_epoch_number(ethash_uint64_t const block_number);
    ethash_uint64_t ethash_get_datasize(ethash_uint64_t const block_number);
    ethash_uint64_t ethash_get_cachesize(ethash_uint64_t const block_number);
    
    /**
     * Calculate the seedhash for a given block number
     */
    ethash_h256_t ethash_get_seedhash(ethash_uint64_t block_number);

    ethash_uint32_t ethash_get_cache_node_number(ethash_uint64_t const block_number);
    bool ethash_compute_cache_nodes(
                                    ethash_node_t* const nodes,
                                    ethash_uint64_t cache_size,
                                    ethash_h256_t const* seed
                                    );
    ethash_light_ptr ethash_light_new(ethash_uint64_t block_number);
    ethash_light_ptr ethash_light_new_with_cache(
                                                 ethash_uint64_t block_number,
                                                 ethash_node_t* const nodes,
                                                 ethash_uint64_t cache_size
                                                 );
    void ethash_light_delete_without_cache(ethash_light_ptr light);
    void ethash_light_delete(ethash_light_ptr light);
    ethash_return_value_t ethash_light_compute(
                                               ethash_light_ptr light,
                                               ethash_h256_t const header_hash,
                                               ethash_uint64_t nonce
                                               );
    bool ethash_hash(
                            ethash_return_value_t* ret,
                            ethash_node_t const* full_nodes,
                            ethash_light_ptr const light,
                            ethash_uint64_t full_size,
                            ethash_h256_t const header_hash,
                            ethash_uint64_t const nonce
                            );

    ethash_h256_t ethash_keccak_256(
                                     ethash_uint8_t const* in,
                                     size_t const size
                                     );

    ethash_node_t ethash_keccak_512(
                                     ethash_uint8_t const* in,
                                     size_t const size
                                     );
#ifdef __cplusplus
}
#endif

