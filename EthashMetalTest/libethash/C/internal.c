/*
 This file is part of ethash.

 ethash is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 ethash is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.    See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with cpp-ethereum.    If not, see <http://www.gnu.org/licenses/>.
 */
/** @file internal.c
 * @author Tim Hughes <tim@twistedfury.com>
 * @author Matthew Wampler-Doty
 * @date 2015
 */

#include <assert.h>
#include <inttypes.h>
#include <stddef.h>
#include <errno.h>
#include <math.h>
#include "ethash.h"
#include "internal.h"
#include "../data_sizes.h"
#include "../common.h"
#include "../mem.h"
#include "sha3.h"

typedef struct ethash_mix ethash_mix_t;
struct ethash_mix { ethash_uint64_t double_words[ETHASH_MIX_BYTES/ETHASH_DOUBLE_WORD_BYTES]; };

//MARK: FNV HELPERS
static inline ethash_uint32_t fnv_32bit(const ethash_uint32_t x, const ethash_uint32_t y)
{
    return x * FNV_PRIME ^ y;
}

static inline void fnv_data(void *x, void *y, void *r, ethash_uint64_t length) {
    ethash_uint32_t *r_32 = (ethash_uint32_t *)r;
    ethash_uint32_t *x_32 = (ethash_uint32_t *)x;
    ethash_uint32_t *y_32 = (ethash_uint32_t *)y;
    do {
        for (ethash_uint64_t i = 0; i < length; i += 1)
        {
            r_32[i] = fnv_32bit(x_32[i], y_32[i]);
        }
    } while (0);
}

static inline ethash_node_t fnv_node(ethash_node_t *x, ethash_node_t *y)
{
    ethash_node_t result;
    ethash_uint64_t len_32 = sizeof(ethash_node_t) / MEMORY_BUS_BYTES;
    fnv_data(x, y, &result, len_32);
    return result;
}

static inline ethash_mix_t fnv_mix(ethash_mix_t *x, ethash_mix_t *y)
{
    ethash_mix_t result;
    ethash_uint64_t len_32 = sizeof(ethash_mix_t) / ETHASH_WORD_BYTES;
    fnv_data(x, y, &result, len_32);
    return result;
}

//MARK: ETHASH
ethash_uint64_t ethash_get_epoch_number(const ethash_uint64_t block_number)
{
    assert(block_number / ETHASH_EPOCH_LENGTH < ETHASH_MAX_PRECALCULATED_ITEMS);
    return block_number / ETHASH_EPOCH_LENGTH;
}

ethash_uint64_t ethash_get_datasize(const ethash_uint64_t block_number)
{
    assert(block_number / ETHASH_EPOCH_LENGTH < ETHASH_MAX_PRECALCULATED_ITEMS);
    return dag_sizes[block_number / ETHASH_EPOCH_LENGTH];
}

ethash_uint64_t ethash_get_cachesize(const ethash_uint64_t block_number)
{
    assert(block_number / ETHASH_EPOCH_LENGTH < ETHASH_MAX_PRECALCULATED_ITEMS);
    return cache_sizes[block_number / ETHASH_EPOCH_LENGTH];
}

ethash_uint32_t ethash_get_cache_node_number(const ethash_uint64_t block_number)
{
    const ethash_uint64_t cache_size = ethash_get_cachesize(block_number);
    assert(cache_size % sizeof(ethash_node_t) == 0);
    const ethash_uint32_t num_nodes = (ethash_uint32_t) (cache_size / sizeof(ethash_node_t));
    return num_nodes;
}

// Follows Sergio's "STRICT MEMORY HARD HASHING FUNCTIONS" (2014)
// https://bitslog.files.wordpress.com/2013/12/memohash-v0-3.pdf
// SeqMemoHash(s, R, N)
bool ethash_compute_cache_nodes(
                                ethash_node_t *const nodes,
                                const ethash_uint64_t cache_size,
                                const ethash_h256_t *const seed
                                )
{
    if (cache_size % sizeof(ethash_node_t) != 0) {
        return false;
    }
    const ethash_uint32_t num_nodes = (ethash_uint32_t) (cache_size / sizeof(ethash_node_t));
    keccak_512((ethash_uint8_t *)seed, ETHASH_HASH_BYTES,
               (ethash_uint8_t *)nodes[0].double_words, ETHASH_NODE_BYTES);

    for (ethash_uint32_t i = 1; i != num_nodes; ++i) {
        keccak_512((ethash_uint8_t *)nodes[i - 1].double_words, ETHASH_NODE_BYTES,
                   (ethash_uint8_t *)nodes[i].double_words, ETHASH_NODE_BYTES);
    }

    for (ethash_uint32_t j = 0; j != ETHASH_CACHE_ROUNDS; j++) {
        for (ethash_uint32_t i = 0; i != num_nodes; i++) {
            const ethash_uint32_t idx = ethash_node_get_word(&nodes[i], 0) % num_nodes;
            ethash_node_t data;
            data = nodes[(num_nodes - 1 + i) % num_nodes];
            ethash_xor_nodes(&nodes[idx], &data);
            keccak_512((ethash_uint8_t *)data.double_words, ETHASH_NODE_BYTES,
                       (ethash_uint8_t *)nodes[i].double_words, ETHASH_NODE_BYTES);
        }
    }

    // now perform endian conversion
    fix_endian_arr32(nodes->words, num_nodes * NODE_WORDS);
    return true;
}

void ethash_calculate_dag_item(
                               ethash_node_t *const ret,
                               const ethash_uint32_t node_index,
                               ethash_light_t *light
                               )
{
    const ethash_uint32_t num_parent_nodes = (ethash_uint32_t) (light->cache_size / sizeof(ethash_node_t));
    const ethash_node_t *cache_nodes = (const ethash_node_t *) light->cache;
    const ethash_node_t *init = &cache_nodes[node_index % num_parent_nodes];

    mem_copy_thread(init, ret, sizeof(ethash_node_t));
    ethash_uint32_t tmp = ethash_node_get_word(ret, 0) ^ node_index;
    ethash_node_set_word(ret, 0, tmp);

    keccak_512((ethash_uint8_t *)ret->double_words, ETHASH_NODE_BYTES,
               (ethash_uint8_t *)ret->double_words, ETHASH_NODE_BYTES);


    for (ethash_uint32_t i = 0; i != ETHASH_DATASET_PARENTS; ++i) {
        const ethash_uint32_t parent_index = (fnv_32bit(node_index ^ i,
                                                          ethash_node_get_word(ret, i % NODE_WORDS))
                                              % num_parent_nodes);
        const ethash_node_t *parent = &cache_nodes[parent_index];

        *ret = fnv_node(ret, parent);
    }
    keccak_512((ethash_uint8_t *)ret->double_words, ETHASH_NODE_BYTES,
               (ethash_uint8_t *)ret->double_words, ETHASH_NODE_BYTES);
}

//MARK: ETHASh HELPERS
static inline ethash_node_t ethash_create_mix_seed(
                                                   ethash_h256_t header,
                                                   ethash_uint64_t nonce
                                                   )
{
    ethash_node_t seed = {0};
    seed.double_words[0] = header.double_words[0];
    seed.double_words[1] = header.double_words[1];
    seed.double_words[2] = header.double_words[2];
    seed.double_words[3] = header.double_words[3];
    seed.double_words[4] = nonce;
    return seed;
}

static inline ethash_mix_t ethash_create_mix_from_nodes(
                                                        ethash_node_t *first_node,
                                                        ethash_node_t *second_node
                                                        )
{
    ethash_mix_t mix;
    ethash_node_t *mapped_pointer = (ethash_node_t *)&mix;
    mapped_pointer[0] = *first_node;
    mapped_pointer[1] = *second_node;
    return mix;
}

static inline ethash_mix_t ethash_create_mix_from_seed(
                                                       ethash_node_t *seed
                                                       )
{
    return ethash_create_mix_from_nodes(seed, seed);
}

static inline ethash_mix_t ethash_hash_mix(
                                           ethash_mix_t *old_mix,
                                           ethash_uint32_t index,
                                           const ethash_light_t *light
                                           )
{
    ethash_node_t first_node;
    ethash_node_t second_node;
    ethash_calculate_dag_item(&first_node, index * MIX_NODES + 0, light);
    ethash_calculate_dag_item(&second_node, index * MIX_NODES + 1, light);
    ethash_mix_t new_mix = ethash_create_mix_from_nodes(&first_node, &second_node);
    return fnv_mix(old_mix, &new_mix);
}

static inline void ethash_compress_mix(ethash_mix_t *mix) {
    // compress mix
    for (ethash_uint32_t w = 0; w != MIX_WORDS; w += 4) {
        ethash_uint32_t reduction = ethash_get_word(mix->double_words, w + 0);
        reduction = fnv_32bit(reduction, ethash_get_word(mix->double_words, w + 1));
        reduction = fnv_32bit(reduction, ethash_get_word(mix->double_words, w + 2));
        reduction = fnv_32bit(reduction, ethash_get_word(mix->double_words, w + 3));
        ethash_set_word(mix->double_words, w / 4 , reduction);
    }
}

bool ethash_hash(
                 ethash_return_value_t *ret,
                 const ethash_light_t *light,
                 const ethash_uint64_t full_size,
                 const ethash_h256_t header_hash,
                 const ethash_uint64_t nonce
                 )
{
    if (full_size % MIX_WORDS != 0) {
        return false;
    }

    // pack hash and nonce together into first 40 bytes of s_mix
    assert(sizeof(ethash_node_t) * 8 == 512);
    ethash_node_t s_mix[MIX_NODES + 1];

    ethash_node_t mix_seed = ethash_create_mix_seed(header_hash, nonce);
    // compute sha3-512 hash and replicate across mix
    keccak_512((ethash_uint8_t *)mix_seed.double_words, 40,
               (ethash_uint8_t *)mix_seed.double_words, ETHASH_NODE_BYTES);
    ethash_mix_t mix = ethash_create_mix_from_seed(&mix_seed);

    const ethash_uint64_t num_full_pages = (unsigned) (full_size / ETHASH_NODE_BYTES);

    for (ethash_uint32_t i = 0; i != ETHASH_ACCESSES; ++i) {
        const ethash_uint32_t index = fnv_32bit(ethash_get_word(mix_seed.double_words, 0) ^ i,
                                                ethash_get_word(mix.double_words, i % MIX_WORDS)) % num_full_pages;

        mix = ethash_hash_mix(&mix, index, light);
    }

    ethash_compress_mix(&mix);
    mem_copy_thread_to_device(mix.double_words, &ret->mix_hash, ETHASH_HASH_BYTES);

    // final Keccak hash
    keccak_256((ethash_uint8_t *)s_mix->double_words, (ETHASH_NODE_BYTES + ETHASH_HASH_BYTES),
               (ethash_uint8_t *)&ret->result, ETHASH_HASH_BYTES);
    return true;
}

ethash_h256_t ethash_get_seedhash(const ethash_uint64_t block_number)
{
    ethash_h256_t ret;
    ethash_h256_reset(&ret);
    const size_t size = sizeof(ethash_h256_t);
    const ethash_uint64_t epochs = ethash_get_epoch_number(block_number);
    for (ethash_uint32_t i = 0; i < epochs; ++i) {
        keccak_256((ethash_uint8_t *)&ret,
                   size,
                   (ethash_uint8_t *)&ret,
                   size);
    }
    return ret;
}

ethash_light_t* ethash_light_new(const ethash_uint64_t block_number)
{
    const ethash_h256_t seedhash = ethash_get_seedhash(block_number);
    const ethash_uint64_t cache_size = ethash_get_cachesize(block_number);
    ethash_light_t *ret;
    ret = calloc(sizeof(ethash_light_t), 1);
    if (!ret) {
        return NULL;
    }
    ret->cache = malloc((size_t)cache_size);
    if (!ret->cache) {
        free(ret);
        return NULL;
    }
    ethash_node_t *nodes = (ethash_node_t *)ret->cache;
    if (!ethash_compute_cache_nodes(nodes, cache_size, &seedhash)) {
        free(ret->cache);
        free(ret);
        return NULL;
    }
    ret->cache_size = cache_size;
    ret->block_number = block_number;
    return ret;
}

ethash_light_t* ethash_light_new_with_cache(
                                            const ethash_uint64_t block_number,
                                            const ethash_node_t *const nodes,
                                            const ethash_uint64_t cache_size)
{
    const ethash_uint64_t calculated_size = ethash_get_cachesize(block_number);
    if (calculated_size != cache_size) {
        return NULL;
    }

    ethash_light_t *ret;
    ret = calloc(sizeof(*ret), 1);
    if (!ret) {
        return NULL;
    }
    ret->cache = nodes;
    ret->cache_size = cache_size;
    ret->block_number = block_number;
    return ret;
}

void ethash_light_delete_without_cache(ethash_light_t *light)
{
    free(light);
}

void ethash_light_delete(ethash_light_t *light)
{
    if (light->cache) {
        free(light->cache);
    }
    free(light);
}

ethash_return_value_t ethash_light_compute(
                                           ethash_light_t *light,
                                           const ethash_h256_t header_hash,
                                           const ethash_uint64_t nonce
                                           )
{
    const ethash_uint64_t full_size = ethash_get_datasize(light->block_number);
    ethash_return_value_t ret;
    ret.success = ethash_hash(&ret, light, full_size, header_hash, nonce);
    return ret;
}

ethash_h256_t ethash_keccak_256(const ethash_uint8_t *const in, const size_t size) {
    ethash_h256_t ret;
    ethash_h256_reset(&ret);
    int result;
    result = keccak_256(in, size, (ethash_uint8_t *)&ret, sizeof(ethash_h256_t));
    return ret;
}

ethash_node_t ethash_keccak_512(const ethash_uint8_t *const in, const size_t size) {
    ethash_node_t ret;
    ethash_node_reset(&ret);
    int result;
    result = keccak_512(in, size, (ethash_uint8_t *)&ret, sizeof(ethash_node_t));
    return ret;
}
