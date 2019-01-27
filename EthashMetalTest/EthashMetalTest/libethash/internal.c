/*
 This file is part of ethash.
 
 ethash is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 ethash is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with cpp-ethereum.	If not, see <http://www.gnu.org/licenses/>.
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
#include "fnv.h"
#include "internal.h"
#include "data_sizes.h"
#include "sha3.h"
#include "endian.h"
#include "mmap.h"

ethash_uint64_t ethash_get_epoch_number(ethash_uint64_t const block_number)
{
    assert(block_number / ETHASH_EPOCH_LENGTH < 2048);
    return block_number / ETHASH_EPOCH_LENGTH;
}

ethash_uint64_t ethash_get_datasize(ethash_uint64_t const block_number)
{
    assert(block_number / ETHASH_EPOCH_LENGTH < 2048);
    return dag_sizes[block_number / ETHASH_EPOCH_LENGTH];
}

ethash_uint64_t ethash_get_cachesize(ethash_uint64_t const block_number)
{
    assert(block_number / ETHASH_EPOCH_LENGTH < 2048);
    return cache_sizes[block_number / ETHASH_EPOCH_LENGTH];
}

uint32_t ethash_get_cache_node_number(ethash_uint64_t const block_number)
{
    ethash_uint64_t cache_size = ethash_get_cachesize(block_number);
    assert(cache_size % sizeof(ethash_node_t) == 0);
    uint32_t const num_nodes = (uint32_t) (cache_size / sizeof(ethash_node_t));
    return num_nodes;
}

// Follows Sergio's "STRICT MEMORY HARD HASHING FUNCTIONS" (2014)
// https://bitslog.files.wordpress.com/2013/12/memohash-v0-3.pdf
// SeqMemoHash(s, R, N)
bool ethash_compute_cache_nodes(
                                ethash_node_t* const nodes,
                                ethash_uint64_t cache_size,
                                ethash_h256_t const* seed
                                )
{
    if (cache_size % sizeof(ethash_node_t) != 0) {
        return false;
    }
    uint32_t const num_nodes = (uint32_t) (cache_size / sizeof(ethash_node_t));
    
    SHA3_512(nodes[0].bytes, (uint8_t*)seed, 32);
    
    for (uint32_t i = 1; i != num_nodes; ++i) {
        SHA3_512(nodes[i].bytes, nodes[i - 1].bytes, 64);
    }
    
    for (uint32_t j = 0; j != ETHASH_CACHE_ROUNDS; j++) {
        for (uint32_t i = 0; i != num_nodes; i++) {
            uint32_t const idx = nodes[i].words[0] % num_nodes;
            ethash_node_t data;
            data = nodes[(num_nodes - 1 + i) % num_nodes];
            for (uint32_t w = 0; w != NODE_WORDS; ++w) {
                data.words[w] ^= nodes[idx].words[w];
            }
            SHA3_512(nodes[i].bytes, data.bytes, sizeof(data));
        }
    }
    
    // now perform endian conversion
    fix_endian_arr32(nodes->words, num_nodes * NODE_WORDS);
    return true;
}

void ethash_calculate_dag_item(
                               ethash_node_t* const ret,
                               uint32_t node_index,
                               ethash_light_ptr const light
                               )
{
    uint32_t num_parent_nodes = (uint32_t) (light->cache_size / sizeof(ethash_node_t));
    ethash_node_t const* cache_nodes = (ethash_node_t const *) light->cache;
    ethash_node_t const* init = &cache_nodes[node_index % num_parent_nodes];
    memcpy(ret, init, sizeof(ethash_node_t));
    ret->words[0] ^= node_index;
    SHA3_512(ret->bytes, ret->bytes, sizeof(ethash_node_t));
    
    for (uint32_t i = 0; i != ETHASH_DATASET_PARENTS; ++i) {
        uint32_t parent_index = fnv_hash(node_index ^ i, ret->words[i % NODE_WORDS]) % num_parent_nodes;
        ethash_node_t const *parent = &cache_nodes[parent_index];
        
        for (unsigned w = 0; w != NODE_WORDS; ++w) {
            ret->words[w] = fnv_hash(ret->words[w], parent->words[w]);
        }
    }
    SHA3_512(ret->bytes, ret->bytes, sizeof(ethash_node_t));
}

bool ethash_compute_full_data(
                              void* mem,
                              ethash_uint64_t full_size,
                              ethash_light_ptr const light,
                              ethash_callback_t callback
                              )
{
    if (full_size % (sizeof(uint32_t) * MIX_WORDS) != 0 ||
        (full_size % sizeof(ethash_node_t)) != 0) {
        return false;
    }
    uint32_t const max_n = (uint32_t)(full_size / sizeof(ethash_node_t));
    ethash_node_t* full_nodes = mem;
    double const progress_change = 1.0f / max_n;
    double progress = 0.0f;
    // now compute full nodes
    for (uint32_t n = 0; n != max_n; ++n) {
        if (callback &&
            n % (max_n / 100) == 0 &&
            callback((unsigned int)(ceil(progress * 100.0f))) != 0) {
            
            return false;
        }
        progress += progress_change;
        ethash_calculate_dag_item(&(full_nodes[n]), n, light);
    }
    return true;
}

static bool ethash_hash(
                        ethash_return_value_t* ret,
                        ethash_node_t const* full_nodes,
                        ethash_light_ptr const light,
                        ethash_uint64_t full_size,
                        ethash_h256_t const header_hash,
                        ethash_uint64_t const nonce
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
    SHA3_512(s_mix->bytes, s_mix->bytes, 40);
    fix_endian_arr32(s_mix[0].words, 16);
    
    ethash_node_t* const mix = s_mix + 1;
    for (uint32_t w = 0; w != MIX_WORDS; ++w) {
        mix->words[w] = s_mix[0].words[w % NODE_WORDS];
    }
    
    unsigned const page_size = sizeof(uint32_t) * MIX_WORDS;
    unsigned const num_full_pages = (unsigned) (full_size / page_size);
    
    for (unsigned i = 0; i != ETHASH_ACCESSES; ++i) {
        uint32_t const index = fnv_hash(s_mix->words[0] ^ i, mix->words[i % MIX_WORDS]) % num_full_pages;
        
        for (unsigned n = 0; n != MIX_NODES; ++n) {
            ethash_node_t const* dag_node;
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
    for (uint32_t w = 0; w != MIX_WORDS; w += 4) {
        uint32_t reduction = mix->words[w + 0];
        reduction = reduction * FNV_PRIME ^ mix->words[w + 1];
        reduction = reduction * FNV_PRIME ^ mix->words[w + 2];
        reduction = reduction * FNV_PRIME ^ mix->words[w + 3];
        mix->words[w / 4] = reduction;
    }
    
    fix_endian_arr32(mix->words, MIX_WORDS / 4);
    memcpy(&ret->mix_hash, mix->bytes, 32);
    // final Keccak hash
    SHA3_256(&ret->result, s_mix->bytes, 64 + 32); // Keccak-256(s + compressed_mix)
    return true;
}

void ethash_quick_hash(
                       ethash_h256_t* return_hash,
                       ethash_h256_t const* header_hash,
                       ethash_uint64_t const nonce,
                       ethash_h256_t const* mix_hash
                       )
{
    uint8_t buf[64 + 32];
    memcpy(buf, header_hash, 32);
    fix_endian64_same(nonce);
    memcpy(&(buf[32]), &nonce, 8);
    SHA3_512(buf, buf, 40);
    memcpy(&(buf[64]), mix_hash, 32);
    SHA3_256(return_hash, buf, 64 + 32);
}

ethash_h256_t ethash_get_seedhash(ethash_uint64_t block_number)
{
    ethash_h256_t ret;
    ethash_h256_reset(&ret);
    ethash_uint64_t const epochs = block_number / ETHASH_EPOCH_LENGTH;
    for (uint32_t i = 0; i < epochs; ++i)
        SHA3_256(&ret, (uint8_t*)&ret, 32);
    return ret;
}

bool ethash_quick_check_difficulty(
                                   ethash_h256_t const* header_hash,
                                   ethash_uint64_t const nonce,
                                   ethash_h256_t const* mix_hash,
                                   ethash_h256_t const* boundary
                                   )
{
    
    ethash_h256_t return_hash;
    ethash_quick_hash(&return_hash, header_hash, nonce, mix_hash);
    return ethash_check_difficulty(&return_hash, boundary);
}

ethash_light_ptr ethash_light_new_internal(ethash_uint64_t cache_size, ethash_h256_t const* seed)
{
    struct ethash_light *ret;
    ret = calloc(sizeof(*ret), 1);
    if (!ret) {
        return NULL;
    }
    ret->cache = malloc((size_t)cache_size);
    if (!ret->cache) {
        goto fail_free_light;
    }
    ethash_node_t* nodes = (ethash_node_t*)ret->cache;
    if (!ethash_compute_cache_nodes(nodes, cache_size, seed)) {
        goto fail_free_cache_mem;
    }
    ret->cache_size = cache_size;
    return ret;
    
fail_free_cache_mem:
    free(ret->cache);
fail_free_light:
    free(ret);
    return NULL;
}

ethash_light_ptr ethash_light_new(ethash_uint64_t block_number)
{
    ethash_h256_t seedhash = ethash_get_seedhash(block_number);
    ethash_light_ptr ret;
    ret = ethash_light_new_internal(ethash_get_cachesize(block_number), &seedhash);
    ret->block_number = block_number;
    return ret;
}

ethash_light_ptr ethash_light_new_with_cache(
                                             ethash_uint64_t block_number,
                                             ethash_node_t* const nodes,
                                             ethash_uint64_t cache_size)
{
    ethash_uint64_t calculated_size = ethash_get_cachesize(block_number);
    if (calculated_size != cache_size) {
        return NULL;
    }
    
    struct ethash_light *ret;
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

ethash_return_value_t ethash_light_compute_internal(
                                                    ethash_light_ptr light,
                                                    ethash_uint64_t full_size,
                                                    ethash_h256_t const header_hash,
                                                    ethash_uint64_t nonce
                                                    )
{
    ethash_return_value_t ret;
    ret.success = true;
    if (!ethash_hash(&ret, NULL, light, full_size, header_hash, nonce)) {
        ret.success = false;
    }
    return ret;
}

ethash_return_value_t ethash_light_compute(
                                           ethash_light_ptr light,
                                           ethash_h256_t const header_hash,
                                           ethash_uint64_t nonce
                                           )
{
    ethash_uint64_t full_size = ethash_get_datasize(light->block_number);
    return ethash_light_compute_internal(light, full_size, header_hash, nonce);
}

static bool ethash_mmap(struct ethash_full* ret, FILE* f)
{
    //    int fd;
    //    char* mmapped_data;
    //    errno = 0;
    //    ret->file = f;
    //    if ((fd = ethash_fileno(ret->file)) == -1) {
    //        return false;
    //    }
    //    mmapped_data = mmap(
    //        NULL,
    //        (size_t)ret->file_size + ETHASH_DAG_MAGIC_NUM_SIZE,
    //        PROT_READ | PROT_WRITE,
    //        MAP_SHARED,
    //        fd,
    //        0
    //    );
    //    if (mmapped_data == MAP_FAILED) {
    //        return false;
    //    }
    //    ret->data = (ethash_node_t*)(mmapped_data + ETHASH_DAG_MAGIC_NUM_SIZE);
    return true;
}

//ethash_full_t ethash_full_new_internal(
void ethash_full_new_internal(
                              char const* dirname,
                              ethash_h256_t const seed_hash,
                              ethash_uint64_t full_size,
                              ethash_light_ptr const light,
                              ethash_callback_t callback
                              )
{
    //    struct ethash_full* ret;
    //    FILE *f = NULL;
    //    ret = calloc(sizeof(*ret), 1);
    //    if (!ret) {
    //        return NULL;
    //    }
    //    ret->file_size = (size_t)full_size;
    //    switch (ethash_io_prepare(dirname, seed_hash, &f, (size_t)full_size, false)) {
    //    case ETHASH_IO_FAIL:
    //        // ethash_io_prepare will do all ETHASH_CRITICAL() logging in fail case
    //        goto fail_free_full;
    //    case ETHASH_IO_MEMO_MATCH:
    //        if (!ethash_mmap(ret, f)) {
    //            ETHASH_CRITICAL("mmap failure()");
    //            goto fail_close_file;
    //        }
    //        return ret;
    //    case ETHASH_IO_MEMO_SIZE_MISMATCH:
    //        // if a DAG of same filename but unexpected size is found, silently force new file creation
    //        if (ethash_io_prepare(dirname, seed_hash, &f, (size_t)full_size, true) != ETHASH_IO_MEMO_MISMATCH) {
    //            ETHASH_CRITICAL("Could not recreate DAG file after finding existing DAG with unexpected size.");
    //            goto fail_free_full;
    //        }
    //        // fallthrough to the mismatch case here, DO NOT go through match
    //    case ETHASH_IO_MEMO_MISMATCH:
    //        if (!ethash_mmap(ret, f)) {
    //            ETHASH_CRITICAL("mmap failure()");
    //            goto fail_close_file;
    //        }
    //        break;
    //    }
    //
    //    if (!ethash_compute_full_data(ret->data, full_size, light, callback)) {
    //        ETHASH_CRITICAL("Failure at computing DAG data.");
    //        goto fail_free_full_data;
    //    }
    //
    //    // after the DAG has been filled then we finalize it by writting the magic number at the beginning
    //    if (fseek(f, 0, SEEK_SET) != 0) {
    //        ETHASH_CRITICAL("Could not seek to DAG file start to write magic number.");
    //        goto fail_free_full_data;
    //    }
    //    ethash_uint64_t const magic_num = ETHASH_DAG_MAGIC_NUM;
    //    if (fwrite(&magic_num, ETHASH_DAG_MAGIC_NUM_SIZE, 1, f) != 1) {
    //        ETHASH_CRITICAL("Could not write magic number to DAG's beginning.");
    //        goto fail_free_full_data;
    //    }
    //    if (fflush(f) != 0) {// make sure the magic number IS there
    //        ETHASH_CRITICAL("Could not flush memory mapped data to DAG file. Insufficient space?");
    //        goto fail_free_full_data;
    //    }
    //    return ret;
    //
    //fail_free_full_data:
    //    // could check that munmap(..) == 0 but even if it did not can't really do anything here
    //    munmap(ret->data, (size_t)full_size);
    //fail_close_file:
    //    fclose(ret->file);
    //fail_free_full:
    //    free(ret);
    //    return NULL;
}

//ethash_full_t ethash_full_new(
void ethash_full_new(
                     ethash_light_ptr light,
                     const char * custom_dir_name,
                     ethash_callback_t callback
                     )
{
    //    char strbuf[256];
    //
    //    if (strcmp(custom_dir_name, "") != 0)
    //        strcpy(strbuf, custom_dir_name);
    //    else
    //        if (!ethash_get_default_dirname(strbuf, 256)) {
    //            return NULL;
    //        }
    //    ethash_uint64_t full_size = ethash_get_datasize(light->block_number);
    //    ethash_h256_t seedhash = ethash_get_seedhash(light->block_number);
    //    return ethash_full_new_internal(strbuf, seedhash, full_size, light, callback);
}

void ethash_full_delete(ethash_full_t full)
{
    // could check that munmap(..) == 0 but even if it did not can't really do anything here
    munmap(full->data, (size_t)full->file_size);
    if (full->file) {
        fclose(full->file);
    }
    free(full);
}

ethash_return_value_t ethash_full_compute(
                                          ethash_full_t full,
                                          ethash_h256_t const header_hash,
                                          ethash_uint64_t nonce
                                          )
{
    ethash_return_value_t ret;
    ret.success = true;
    if (!ethash_hash(
                     &ret,
                     (ethash_node_t const*)full->data,
                     NULL,
                     full->file_size,
                     header_hash,
                     nonce)) {
        ret.success = false;
    }
    return ret;
}

void const* ethash_full_dag(ethash_full_t full)
{
    return full->data;
}

ethash_uint64_t ethash_full_dag_size(ethash_full_t full)
{
    return full->file_size;
}
