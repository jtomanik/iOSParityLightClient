#pragma once
#include "ethash.h"
#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

    static inline ethash_uint8_t ethash_h256_get(ethash_h256_t const* hash, unsigned int i)
    {
        return hash->b[i];
    }

    static inline void ethash_h256_set(ethash_h256_t* hash, unsigned int i, ethash_uint8_t v)
    {
        hash->b[i] = v;
    }

    static inline void ethash_h256_reset(ethash_h256_t* hash)
    {
        memset(hash, 0, 32);
    }

    /**
     * Allocate and initialize a new ethash_light handler. Internal version
     *
     * @param cache_size    The size of the cache in bytes
     * @param seed          Block seedhash to be used during the computation of the
     *                      cache nodes
     * @return              Newly allocated ethash_light handler or NULL in case of
     *                      ERRNOMEM or invalid parameters used for @ref ethash_compute_cache_nodes()
     */
    ethash_light_ptr ethash_light_new_internal(ethash_uint64_t cache_size, ethash_h256_t const* seed);

    struct ethash_full {
        FILE* file;
        ethash_uint64_t file_size;
        ethash_node_t* data;
    };

    /**
     * Allocate and initialize a new ethash_full handler. Internal version.
     *
     * @param dirname        The directory in which to put the DAG file.
     * @param seedhash       The seed hash of the block. Used in the DAG file naming.
     * @param full_size      The size of the full data in bytes.
     * @param cache          A cache object to use that was allocated with @ref ethash_cache_new().
     *                       Iff this function succeeds the ethash_full_t will take memory
     *                       memory ownership of the cache and free it at deletion. If
     *                       not then the user still has to handle freeing of the cache himself.
     * @param callback       A callback function with signature of @ref ethash_callback_t
     *                       It accepts an unsigned with which a progress of DAG calculation
     *                       can be displayed. If all goes well the callback should return 0.
     *                       If a non-zero value is returned then DAG generation will stop.
     * @return               Newly allocated ethash_full handler or NULL in case of
     *                       ERRNOMEM or invalid parameters used for @ref ethash_compute_full_data()
     */
    //ethash_full_t ethash_full_new_internal(
    void ethash_full_new_internal(
                                  char const* dirname,
                                  ethash_h256_t const seed_hash,
                                  ethash_uint64_t full_size,
                                  ethash_light_ptr const light,
                                  ethash_callback_t callback
                                  );

    void ethash_calculate_dag_item(
                                   ethash_node_t* const ret,
                                   ethash_uint32_t node_index,
                                   ethash_light_ptr const cache
                                   );

    ethash_uint64_t ethash_get_datasize(ethash_uint64_t const block_number);
    ethash_uint64_t ethash_get_cachesize(ethash_uint64_t const block_number);

    /**
     * Compute the memory data for a full node's memory
     *
     * @param mem         A pointer to an ethash full's memory
     * @param full_size   The size of the full data in bytes
     * @param cache       A cache object to use in the calculation
     * @param callback    The callback function. Check @ref ethash_full_new() for details.
     * @return            true if all went fine and false for invalid parameters
     */
    bool ethash_compute_full_data(
                                  void* mem,
                                  ethash_uint64_t full_size,
                                  ethash_light_ptr const light,
                                  ethash_callback_t callback
                                  );

#ifdef __cplusplus
}
#endif
