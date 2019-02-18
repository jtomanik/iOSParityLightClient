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

#ifndef Ethash_c
#define Ethash_c

#include "../Ethash.h"

#ifdef __cplusplus
extern "C" {
#endif

    ethash_uint64_t ethash_get_epoch_number(const ethash_uint64_t block_number);
    ethash_uint64_t ethash_get_datasize(const ethash_uint64_t block_number);
    ethash_uint64_t ethash_get_cachesize(const ethash_uint64_t block_number);
//    ethash_h256_t ethash_get_seedhash(const ethash_uint64_t block_number);
    ethash_uint32_t ethash_get_cache_node_number(const ethash_uint64_t block_number);

    ethash_h256_t ethash_get_seedhash(const ethash_uint64_t block_number);

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

#endif /* Ethash_c */
