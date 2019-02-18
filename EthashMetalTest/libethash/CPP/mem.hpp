//
//  mem.hpp
//  GPUEthashTest
//
//  Created by Jakub Tomanik on 12/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#ifndef mem_hpp
#define mem_hpp

#include "../Ethash.h"

static inline void mem_clear_device(
                                    DEVICESPACE(void) *b,
                                    ethash_uint64_t size)
{
    //    assert(size % MEMORY_BUS_BYTES == 0)
    if (size % MEMORY_BUS_BYTES == 0) {
        DEVICESPACE(ethash_uint32_t) *buffer = (DEVICESPACE(ethash_uint32_t) *)b;
        ethash_uint64_t size_64 = size / MEMORY_BUS_BYTES;
        do {
            for (ethash_uint64_t i = 0; i < size_64; i += 1)
            {
                buffer[i] = 0;
            }
        } while (0);
    } else {
        DEVICESPACE(ethash_uint8_t) *buffer = (DEVICESPACE(ethash_uint8_t) *)b;
        do {
            for (ethash_uint64_t i = 0; i < size; i += 1)
            {
                buffer[i] = 0;
            }
        } while(0);
    }
}

static inline void mem_clear_thread(
                                    THREADSPACE(void) *b,
                                    ethash_uint64_t size)
{
    //    assert(size % MEMORY_BUS_BYTES == 0)
    if (size % MEMORY_BUS_BYTES == 0) {
        THREADSPACE(ethash_uint32_t) *buffer = (THREADSPACE(ethash_uint32_t) *)b;
        ethash_uint64_t size_64 = size / MEMORY_BUS_BYTES;
        do {
            for (ethash_uint64_t i = 0; i < size_64; i += 1)
            {
                buffer[i] = 0;
            }
        } while (0);
    } else {
        THREADSPACE(ethash_uint8_t) *buffer = (THREADSPACE(ethash_uint8_t) *)b;
        do {
            for (ethash_uint64_t i = 0; i < size; i += 1)
            {
                buffer[i] = 0;
            }
        } while(0);
    }
}

static inline void mem_copy_device_to_thread(
                               const DEVICESPACE(ethash_uint8_t) *const src,
                               THREADSPACE(ethash_uint8_t) *const dst,
                               const ethash_uint64_t len)
{
    if (len % MEMORY_BUS_BYTES == 0) {
        DEVICESPACE(ethash_uint32_t) *in_buffer = (DEVICESPACE(ethash_uint32_t) *)src;
        THREADSPACE(ethash_uint32_t) *out_buffer = (THREADSPACE(ethash_uint32_t) *)dst;
        ethash_uint64_t len_32 = len / MEMORY_BUS_BYTES;
        do {
            for (ethash_uint64_t i = 0; i < len_32; i += 1)
            {
                out_buffer[i] = in_buffer[i];
            }
        } while (0);
    } else {
        do {
            for (ethash_uint64_t i = 0; i < len; i += 1)
            {
                dst[i] = src[i];
            }
        } while(0);
    }
}

static inline void mem_copy_device(
                            const DEVICESPACE(ethash_uint8_t) *const src,
                            DEVICESPACE(ethash_uint8_t) *const dst,
                            const ethash_uint64_t len)
{
    if (len % MEMORY_BUS_BYTES == 0) {
        DEVICESPACE(ethash_uint32_t) *in_buffer = (DEVICESPACE(ethash_uint32_t) *)src;
        DEVICESPACE(ethash_uint32_t) *out_buffer = (DEVICESPACE(ethash_uint32_t) *)dst;
        ethash_uint64_t len_32 = len / MEMORY_BUS_BYTES;
        do {
            for (ethash_uint64_t i = 0; i < len_32; i += 1)
            {
                out_buffer[i] = in_buffer[i];
            }
        } while (0);
    } else {
        do {
            for (ethash_uint64_t i = 0; i < len; i += 1)
            {
                dst[i] = src[i];
            }
        } while(0);
    }
}

static inline void mem_copy_thread_to_device(
                                const THREADSPACE(ethash_uint8_t) *const src,
                                DEVICESPACE(ethash_uint8_t) *const dst,
                                const ethash_uint64_t len)
{
    if (len % MEMORY_BUS_BYTES == 0) {
        THREADSPACE(ethash_uint32_t) *in_buffer = (THREADSPACE(ethash_uint32_t) *)src;
        DEVICESPACE(ethash_uint32_t) *out_buffer = (DEVICESPACE(ethash_uint32_t) *)dst;
        ethash_uint64_t len_32 = len / MEMORY_BUS_BYTES;
        do {
            for (ethash_uint64_t i = 0; i < len_32; i += 1)
            {
                out_buffer[i] = in_buffer[i];
            }
        } while (0);
    } else {
        do {
            for (ethash_uint64_t i = 0; i < len; i += 1)
            {
                dst[i] = src[i];
            }
        } while(0);
    }
}

#if defined(__METAL_MACOS__) || defined(__METAL_IOS__)

#else
#include <stdio.h>

static inline void mem_copy(
                            const ethash_uint8_t *const src,
                            ethash_uint8_t *const dst,
                            const ethash_uint64_t len)
{
    if (len % MEMORY_BUS_BYTES == 0) {
        ethash_uint32_t *in_buffer = (ethash_uint32_t *)src;
        ethash_uint32_t *out_buffer = (ethash_uint32_t *)dst;
        ethash_uint64_t len_64 = len / MEMORY_BUS_BYTES;
        do {
            for (ethash_uint64_t i = 0; i < len_64; i += 1)
            {
                out_buffer[i] = in_buffer[i];
            }
        } while (0);
    } else {
        do {
            for (ethash_uint64_t i = 0; i < len; i += 1)
            {
                dst[i] = src[i];
            }
        } while(0);
    }
}

#endif
#endif /* mem_hpp */
