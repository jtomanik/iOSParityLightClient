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
#include "sha3.h"
#include "endian.h"

static inline ethash_uint32_t fnv_hash(const ethash_uint32_t x, const ethash_uint32_t y)
{
    return x * FNV_PRIME ^ y;
}

ethash_uint64_t ethash_get_epoch_number(const ethash_uint64_t block_number)
{
    assert(block_number / ETHASH_EPOCH_LENGTH < 2048);
    return block_number / ETHASH_EPOCH_LENGTH;
}

ethash_uint64_t ethash_get_datasize(const ethash_uint64_t block_number)
{
    assert(block_number / ETHASH_EPOCH_LENGTH < 2048);
    return dag_sizes[block_number / ETHASH_EPOCH_LENGTH];
}

ethash_uint64_t ethash_get_cachesize(const ethash_uint64_t block_number)
{
    assert(block_number / ETHASH_EPOCH_LENGTH < 2048);
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
    keccak_512((ethash_uint8_t *)seed, 32, nodes[0].bytes, 64);

    for (ethash_uint32_t i = 1; i != num_nodes; ++i) {
        keccak_512(nodes[i - 1].bytes, 64, nodes[i].bytes, 64);

    }

    for (ethash_uint32_t j = 0; j != ETHASH_CACHE_ROUNDS; j++) {
        for (ethash_uint32_t i = 0; i != num_nodes; i++) {
            const ethash_uint32_t idx = nodes[i].words[0] % num_nodes;
            ethash_node_t data;
            data = nodes[(num_nodes - 1 + i) % num_nodes];
            for (ethash_uint32_t w = 0; w != NODE_WORDS; ++w) {
                data.words[w] ^= nodes[idx].words[w];
            }
            keccak_512(data.bytes, sizeof(data), nodes[i].bytes, 64);

        }
    }

    // now perform endian conversion
    fix_endian_arr32(nodes->words, num_nodes * NODE_WORDS);
    return true;
}

void ethash_calculate_dag_item(
                               ethash_node_t *const ret,
                               const ethash_uint32_t node_index,
                               const ethash_light_ptr light
                               )
{
    const ethash_uint32_t num_parent_nodes = (ethash_uint32_t) (light->cache_size / sizeof(ethash_node_t));
    const ethash_node_t *cache_nodes = (const ethash_node_t *) light->cache;
    const ethash_node_t *init = &cache_nodes[node_index % num_parent_nodes];
    memcpy(ret, init, sizeof(ethash_node_t));
    ret->words[0] ^= node_index;
    keccak_512(ret->bytes, sizeof(ethash_node_t), ret->bytes, 64);


    for (ethash_uint32_t i = 0; i != ETHASH_DATASET_PARENTS; ++i) {
        const ethash_uint32_t parent_index = fnv_hash(node_index ^ i, ret->words[i % NODE_WORDS]) % num_parent_nodes;
        const ethash_node_t *parent = &cache_nodes[parent_index];

        for (unsigned w = 0; w != NODE_WORDS; ++w) {
            ret->words[w] = fnv_hash(ret->words[w], parent->words[w]);
        }
    }
    keccak_512(ret->bytes, sizeof(ethash_node_t), ret->bytes, 64);
}

bool ethash_hash(
                        ethash_return_value_t *ret,
                        const ethash_node_t *full_nodes,
                        const ethash_light_ptr light,
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
    memcpy(s_mix[0].bytes, &header_hash, 32);
    fix_endian64(s_mix[0].double_words[4], nonce);

    // compute sha3-512 hash and replicate across mix
    keccak_512(s_mix->bytes, 40, s_mix->bytes, 64);

    fix_endian_arr32(s_mix[0].words, 16);

    ethash_node_t *const mix = s_mix + 1;
    for (ethash_uint32_t w = 0; w != MIX_WORDS; ++w) {
        mix->words[w] = s_mix[0].words[w % NODE_WORDS];
    }

    const unsigned int page_size = sizeof(ethash_uint32_t) * MIX_WORDS;
    const unsigned int num_full_pages = (unsigned) (full_size / page_size);

    for (unsigned i = 0; i != ETHASH_ACCESSES; ++i) {
        const ethash_uint32_t index = fnv_hash(s_mix->words[0] ^ i, mix->words[i % MIX_WORDS]) % num_full_pages;

        for (unsigned n = 0; n != MIX_NODES; ++n) {
            const ethash_node_t *dag_node;
            if (full_nodes) {
                dag_node = &full_nodes[MIX_NODES * index + n];
            } else {
                ethash_node_t tmp_node;
                ethash_calculate_dag_item(&tmp_node, index * MIX_NODES + n, light);
                dag_node = &tmp_node;
            }

            for (unsigned w = 0; w != NODE_WORDS; ++w) {
                mix[n].words[w] = fnv_hash(mix[n].words[w], dag_node->words[w]);
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
    memcpy(&ret->mix_hash, mix->bytes, 32);
    // final Keccak hash
    keccak_256(s_mix->bytes, (64 + 32), (ethash_uint8_t *)&ret->result, 32);
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

ethash_light_ptr ethash_light_new(const ethash_uint64_t block_number)
{
//    ethash_h256_t seedhash;
    const ethash_h256_t seedhash = ethash_get_seedhash(block_number);
//    ethash_get_seedhash(block_number, &seedhash);
    const ethash_uint64_t cache_size = ethash_get_cachesize(block_number);
    ethash_light_ptr ret;
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

ethash_light_ptr ethash_light_new_with_cache(
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

void ethash_light_delete_without_cache(ethash_light_ptr light)
{
    free(light);
}

void ethash_light_delete(ethash_light_ptr light)
{
    if (light->cache) {
        free(light->cache);
    }
    free(light);
}

ethash_return_value_t ethash_light_compute(
                                           ethash_light_ptr light,
                                           const ethash_h256_t header_hash,
                                           const ethash_uint64_t nonce
                                           )
{
    const ethash_uint64_t full_size = ethash_get_datasize(light->block_number);
    ethash_return_value_t ret;
    ret.success = ethash_hash(&ret, NULL, light, full_size, header_hash, nonce);
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
