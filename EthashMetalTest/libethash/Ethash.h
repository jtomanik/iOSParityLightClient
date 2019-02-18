//
//  Ethash.h
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 09/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#ifndef Ethash
#define Ethash

#if defined(__METAL_MACOS__) || defined(__METAL_IOS__)

#else
    #include <stdint.h>
    #include <stdbool.h>
    #include <string.h>
    #include <stddef.h>
#endif

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

#define FNV_PRIME 0x01000193

// compile time settings
#define NODE_WORDS (ETHASH_HASH_BYTES / ETHASH_WORD_BYTES)
#define MIX_WORDS (ETHASH_MIX_BYTES / ETHASH_WORD_BYTES)
#define MIX_NODES (MIX_WORDS / NODE_WORDS)

#define MEMORY_BUS_BYTES 4

#ifdef __cplusplus
extern "C" {
#endif

    typedef union ethash_node ethash_node_t;
    typedef struct ethash_h256 ethash_h256_t;
    typedef unsigned int ethash_uint32_t;
    typedef signed int ethash_int32_t;
    typedef unsigned char ethash_uint8_t;

    typedef struct ethash_light ethash_light_t;
    typedef struct ethash_return_value ethash_return_value_t;

#if defined(__METAL_MACOS__) || defined(__METAL_IOS__)
    typedef size_t ethash_uint64_t;

//    typedef device ethash_light_t device_ethash_light_t;
//    typedef device ethash_node_t device_ethash_node_t;
//    typedef device ethash_h256_t device_ethash_h256_t;
//    typedef device ethash_uint64_t device_ethash_uint64_t;
//    typedef device ethash_uint32_t device_ethash_uint32_t;
//    typedef device ethash_int32_t device_ethash_int32_t;
//    typedef device ethash_uint8_t device_ethash_uint8_t;
//    typedef device void device_void;
//
//    typedef thread ethash_node_t thread_ethash_node_t;
//    typedef thread ethash_h256_t thread_ethash_h256_t;
//    typedef thread ethash_uint64_t thread_ethash_uint64_t;
//    typedef thread ethash_uint32_t thread_ethash_uint32_t;
//    typedef thread ethash_int32_t thread_ethash_int32_t;
//    typedef thread ethash_uint8_t thread_ethash_uint8_t;
//    typedef thread void thread_void;

    #define DEVICESPACE(e) device e
    #define THREADSPACE(e) thread e
    #define CONSTSPACE constant static const

#else
    typedef unsigned long long ethash_uint64_t;

    #define DEVICESPACE(e) e
    #define THREADSPACE(e) e
    #define CONSTSPACE static const
#endif


    //    typedef struct ethash_light DEVICESPACE( *ethash_light_ptr);
    typedef DEVICESPACE(ethash_light_t *) ethash_light_ptr;

    struct ethash_h256 { ethash_uint8_t b[ETHASH_SHORT_HASH_BYTES]; };

    struct ethash_light {
        //        MEMSPACE const void *cache;
        const DEVICESPACE(void) *cache;
        ethash_uint64_t cache_size;
        ethash_uint64_t block_number;
    };

//    struct ethash_full;
//    typedef struct ethash_full DEVICESPACE( *ethash_full_t);

    struct ethash_return_value {
        ethash_h256_t result;
        ethash_h256_t mix_hash;
        bool success;
    };

    union ethash_node {
        ethash_uint8_t bytes[NODE_WORDS * 4];
        ethash_uint32_t words[NODE_WORDS];
        ethash_uint64_t double_words[NODE_WORDS / 2];
    };

#ifdef __cplusplus
}
#endif

#endif /* Ethash */
