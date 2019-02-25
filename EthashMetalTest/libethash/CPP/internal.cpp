//
//  internal.cpp
//  GPUEthashTest
//
//  Created by Jakub Tomanik on 12/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#include "internal.hpp"
#include "keccak.hpp"
#include "mem.hpp"

#define fix_endian64(dst_, src_) dst_ = src_
#define fix_endian_arr32(arr_, size_)

//MARK: get_seedhash
#define SEEDHASH_BODY(postfix, space) \
CONCAT(ethash_h256_reset_,postfix)(ret);                                \
size_t size = sizeof(ethash_h256_t);                              \
ethash_uint64_t epochs = ethash_get_epoch_number(block_number);   \
\
for (ethash_uint64_t i = 0; i < epochs; i++) {                          \
    CONCAT(keccak_256_,postfix)((space(ethash_uint8_t) *)ret,           \
                      size,                                             \
                      (space(ethash_uint8_t) *)ret,                     \
                      size);                                            \
}                                                                       \

void ethash_get_seedhash_device(ethash_uint64_t block_number, DEVICESPACE(ethash_h256_t) *ret)
{
    SEEDHASH_BODY(device, DEVICESPACE)
}

void ethash_get_seedhash_thread(ethash_uint64_t block_number, THREADSPACE(ethash_h256_t) *ret)
{
    SEEDHASH_BODY(thread, THREADSPACE)
}

//MARK: compute_cache_nodes
#define CACHENODES_BODY(postfix, space) \
if (cache_size % sizeof(ethash_node_t) != 0) {                      \
    return false;                                                   \
}                                                                   \
ethash_uint32_t num_nodes = (ethash_uint32_t) (cache_size / sizeof(ethash_node_t));   \
CONCAT(keccak_512_,postfix)((space(ethash_uint8_t) *)seed, 32, nodes[0].bytes, 64);         \
\
for (ethash_uint32_t i = 1; i != num_nodes; ++i) {                  \
    keccak_512_device(nodes[i - 1].bytes, 64, nodes[i].bytes, 64);                \
}                                                                   \
\
for (ethash_uint32_t j = 0; j != ETHASH_CACHE_ROUNDS; j++) {        \
    for (ethash_uint32_t i = 0; i != num_nodes; i++) {              \
        ethash_uint32_t idx = nodes[i].words[0] % num_nodes;  \
        ethash_node_t data;                                         \
ethash_node_reset_thread(&data);    \
\
        keccak_512_thread_to_device(data.bytes, sizeof(ethash_node_t), nodes[i].bytes, 64);          \
    }                                                               \
}                                                                   \
\
return true;                                                        \

//data = nodes[(num_nodes - 1 + i) % num_nodes];              \
//for (ethash_uint32_t w = 0; w != NODE_WORDS; ++w) {         \
//    data.words[w] ^= nodes[idx].words[w];                   \
//}                                                           \

//keccak_512_thread_to_device(data.bytes, sizeof(data), nodes[i].bytes, 64);          \


//ethash_uint32_t dx = (num_nodes - 1 + i) % num_nodes;   \
//mem_copy_device_to_thread(&nodes[dx], &data, sizeof(ethash_node_t));   \

bool ethash_compute_cache_nodes_device(
                                DEVICESPACE(ethash_node_t) *nodes,
                                ethash_uint64_t cache_size,
                                DEVICESPACE(ethash_h256_t) *seed
                                )
{
    CACHENODES_BODY(device, DEVICESPACE)
}

bool ethash_compute_cache_nodes_device_and_thread(
                                       DEVICESPACE(ethash_node_t) *nodes,
                                       ethash_uint64_t cache_size,
                                       THREADSPACE(ethash_h256_t) *seed
                                       )
{
    CACHENODES_BODY(thread_to_device, THREADSPACE)
}

void ethash_light_new_with_cache(
                                             ethash_uint64_t block_number,
                                             DEVICESPACE(ethash_node_t) *nodes,
                                             ethash_uint64_t cache_size,
                                             DEVICESPACE(ethash_light_t) *ret)
{
    ethash_uint64_t calculated_size = ethash_get_cachesize(block_number);
    if (calculated_size != cache_size) {
        return;
    }

    ret->cache = nodes;
    ret->cache_size = cache_size;
    ret->block_number = block_number;
}

#define DAGITEM_BODY(postfix, space) \
ethash_uint32_t num_parent_nodes = (ethash_uint32_t) (light->cache_size / sizeof(ethash_node_t)); \
space(ethash_node_t) *cache_nodes = (space(ethash_node_t) *) light->cache;      \
space(ethash_node_t) *init = &cache_nodes[node_index % num_parent_nodes];                   \
CONCAT(mem_copy_,postfix)(init, ret, sizeof(ethash_node_t));    \
ret->words[0] ^= node_index;        \
CONCAT(keccak_512_,postfix)(ret->bytes, sizeof(ethash_node_t), ret->bytes, 64);     \
for (ethash_uint32_t i = 0; i != ETHASH_DATASET_PARENTS; ++i) {                     \
    ethash_uint32_t parent_index = fnv_hash_32(node_index ^ i, ret->words[i % NODE_WORDS]) % num_parent_nodes;       \
    space(ethash_node_t) *parent = &cache_nodes[parent_index];                \
    for (unsigned w = 0; w != NODE_WORDS; ++w) {                        \
        ret->words[w] = fnv_hash_32(ret->words[w], parent->words[w]);         \
    }           \
}       \
CONCAT(keccak_512_, postfix)(ret->bytes, sizeof(ethash_node_t), ret->bytes, 64);    \

void ethash_calculate_dag_item_device(
                               DEVICESPACE(ethash_node_t) *ret,
                               ethash_uint32_t node_index,
                               DEVICESPACE(ethash_light_t) *light
                               )
{
    DAGITEM_BODY(device, DEVICESPACE)
//    ethash_uint32_t num_parent_nodes = (ethash_uint32_t) (light->cache_size / sizeof(ethash_node_t));
//    DEVICESPACE(ethash_node_t) *cache_nodes = (DEVICESPACE(ethash_node_t) *) light->cache;
//    DEVICESPACE(ethash_node_t) *init = &cache_nodes[node_index % num_parent_nodes];
//
//    mem_copy_device(init, ret, sizeof(ethash_node_t));
//    ret->words[0] ^= node_index;
//    keccak_512_device(ret->bytes, sizeof(ethash_node_t), ret->bytes, 64);
//
//
//    for (ethash_uint32_t i = 0; i != ETHASH_DATASET_PARENTS; ++i) {
//        ethash_uint32_t parent_index = fnv_hash_32(node_index ^ i, ret->words[i % NODE_WORDS]) % num_parent_nodes;
//        DEVICESPACE(ethash_node_t) *parent = &cache_nodes[parent_index];
//
//        for (unsigned w = 0; w != NODE_WORDS; ++w) {
//            ret->words[w] = fnv_hash_32(ret->words[w], parent->words[w]);
//        }
//    }
//    keccak_512_device(ret->bytes, sizeof(ethash_node_t), ret->bytes, 64);
}

void ethash_calculate_dag_item_thread(
                                      THREADSPACE(ethash_node_t) *ret,
                                      ethash_uint32_t node_index,
                                      DEVICESPACE(ethash_light_t) *light
                                      )
{
    ethash_uint32_t num_parent_nodes = (ethash_uint32_t) (light->cache_size / sizeof(ethash_node_t));
    DEVICESPACE(ethash_node_t) *cache_nodes = (DEVICESPACE(ethash_node_t) *) light->cache;
    DEVICESPACE(ethash_node_t) *init = &cache_nodes[node_index % num_parent_nodes];

    mem_copy_device_to_thread(init, ret, sizeof(ethash_node_t));
    ret->words[0] ^= node_index;
    keccak_512_thread(ret->bytes, sizeof(ethash_node_t), ret->bytes, 64);


    for (ethash_uint32_t i = 0; i != ETHASH_DATASET_PARENTS; ++i) {
        ethash_uint32_t parent_index = fnv_hash_32(node_index ^ i, ret->words[i % NODE_WORDS]) % num_parent_nodes;
        DEVICESPACE(ethash_node_t) *parent = &cache_nodes[parent_index];

        for (unsigned w = 0; w != NODE_WORDS; ++w) {
            ret->words[w] = fnv_hash_32(ret->words[w], parent->words[w]);
        }
    }
    keccak_512_thread(ret->bytes, sizeof(ethash_node_t), ret->bytes, 64);
}

bool ethash_hash(
                 DEVICESPACE(ethash_return_value_t) *ret,
                 DEVICESPACE(ethash_light_t *) light,
                 ethash_uint64_t full_size,
                 ethash_h256_t header_hash,
                 ethash_uint64_t nonce
                 )
{
    if (full_size % MIX_WORDS != 0) {
        return false;
    }

    // pack hash and nonce together into first 40 bytes of s_mix
    //    assert(sizeof(ethash_node_t) * 8 == 512);
    ethash_node_t s_mix[MIX_NODES + 1];
    mem_copy_thread(&header_hash, s_mix[0].bytes, 32);
    
    fix_endian64(s_mix[0].double_words[4], nonce);

    // compute sha3-512 hash and replicate across mix
    keccak_512_thread(s_mix->bytes, 40, s_mix->bytes, 64);

    fix_endian_arr32(s_mix[0].words, 16);

    THREADSPACE(ethash_node_t) *mix = s_mix + 1;
    for (ethash_uint32_t w = 0; w != MIX_WORDS; ++w) {
        mix->words[w] = s_mix[0].words[w % NODE_WORDS];
    }

    unsigned int page_size = sizeof(ethash_uint32_t) * MIX_WORDS;
    unsigned int num_full_pages = (unsigned) (full_size / page_size);

    for (unsigned i = 0; i != ETHASH_ACCESSES; ++i) {
        ethash_uint32_t index = fnv_hash_32(s_mix->words[0] ^ i, mix->words[i % MIX_WORDS]) % num_full_pages;

        for (unsigned n = 0; n != MIX_NODES; ++n) {
            THREADSPACE(ethash_node_t) *dag_node;
            ethash_node_t tmp_node;
            ethash_calculate_dag_item_thread(&tmp_node, index * MIX_NODES + n, light);
            dag_node = &tmp_node;

            for (unsigned w = 0; w != NODE_WORDS; ++w) {
                mix[n].words[w] = fnv_hash_32(mix[n].words[w], dag_node->words[w]);
            }
        }
    }

    // compress mix
    for (ethash_uint32_t w = 0; w != MIX_WORDS; w += 4) {
        ethash_uint32_t reduction = mix->words[w + 0];
        reduction = reduction * FNV_PRIME ^ mix->words[w + 1];
        reduction = reduction * FNV_PRIME ^ mix->words[w + 2];
        reduction = reduction * FNV_PRIME ^ mix->words[w + 3];
        mix->words[w / 4] = reduction;
    }

    fix_endian_arr32(mix->words, MIX_WORDS / 4);
    mem_copy_thread_to_device(mix->bytes, &ret->mix_hash, 32);
    // final Keccak hash
    keccak_256_thread_to_device(s_mix->bytes, (64 + 32), (DEVICESPACE(ethash_uint8_t) *)&ret->result, 32);
    return true;
}

void ethash_light_compute(
                                           DEVICESPACE(ethash_light_t) *light,
                                           ethash_h256_t header_hash,
                                           ethash_uint64_t nonce,
                                           DEVICESPACE(ethash_return_value_t) *ret
                                           )
{
    ethash_uint64_t full_size = ethash_get_datasize(light->block_number);
    ret->success = ethash_hash(ret, light, full_size, header_hash, nonce);
}
