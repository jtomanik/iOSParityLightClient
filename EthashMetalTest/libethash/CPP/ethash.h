//
//  Ethash.h
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 06/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#ifndef Ethash
#define Ethash

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
#define ETHASH_SHORT_HASH_BYTES 32 // hash length in bytes, 256bits
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

typedef unsigned char ethash_uint8_t;
typedef unsigned int ethash_uint32_t;
typedef signed int ethash_int32_t;
typedef size_t ethash_uint64_t;
//static_assert(sizeof(ethash_uint64_t) == 8, "Invalid uint64 size");

/// Type of a seedhash/blockhash e.t.c.
typedef struct ethash_h256 { ethash_uint8_t b[ETHASH_SHORT_HASH_BYTES]; } ethash_h256_t;

// convenience macro to statically initialize an h256_t
// usage:
// ethash_h256_t a = ethash_h256_static_init(1, 2, 3, ... )
// have to provide all 32 values. If you don't provide all the rest
// will simply be unitialized (not guranteed to be 0)
#define ethash_h256_static_init(...)            \
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

#if __cplusplus
extern "C"
{
#endif /* __cplusplus */

    void cpp_ethash_keccak(
                           ethash_uint8_t *in,
                           ethash_uint32_t size,
                           ethash_h256_t *ret,
                           ethash_int32_t *result
                           );

#if __cplusplus
}
#endif /* __cplusplus */


#endif /* Ethash */

