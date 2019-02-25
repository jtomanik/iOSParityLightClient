//
//  mem.hpp
//  GPUEthashTest
//
//  Created by Jakub Tomanik on 12/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#ifndef mem_h
#define mem_h

#include "Ethash.h"

#define CONCAT1(a, b) a ## b
#define CONCAT(a, b) CONCAT1(a, b)

#define MEM_CLEAR_BODY                                              \
if (size % MEMORY_BUS_BYTES == 0) {                                 \
    ethash_uint64_t size_64 = size / MEMORY_BUS_BYTES;              \
    do {                                                            \
        for (ethash_uint64_t i = 0; i < size_64; i += 1)            \
        {                                                           \
            buffer_32[i] = 0;                                       \
        }                                                           \
    } while (0);                                                    \
} else {                                                            \
    do {                                                            \
        for (ethash_uint64_t i = 0; i < size; i += 1)               \
        {                                                           \
            buffer_8[i] = 0;                                        \
        }                                                           \
    } while(0);                                                     \
}


static inline void mem_clear_device(
                                    DEVICESPACE(void) *b,
                                    ethash_uint64_t size)
{
    DEVICESPACE(ethash_uint32_t) *buffer_32 = (DEVICESPACE(ethash_uint32_t) *)b;
    DEVICESPACE(ethash_uint8_t) *buffer_8 = (DEVICESPACE(ethash_uint8_t) *)b;

    MEM_CLEAR_BODY
}

static inline void mem_clear_thread(
                                    THREADSPACE(void) *b,
                                    ethash_uint64_t size)
{
    THREADSPACE(ethash_uint32_t) *buffer_32 = (THREADSPACE(ethash_uint32_t) *)b;
    THREADSPACE(ethash_uint8_t) *buffer_8 = (THREADSPACE(ethash_uint8_t) *)b;

    MEM_CLEAR_BODY
}

#define MEM_COPY_BODY                                               \
if (len % MEMORY_BUS_BYTES == 0) {                                  \
    ethash_uint64_t len_32 = len / MEMORY_BUS_BYTES;                \
    do {                                                            \
        for (ethash_uint64_t i = 0; i < len_32; i += 1)             \
        {                                                           \
            out_buffer_32[i] = in_buffer_32[i];                     \
        }                                                           \
    } while (0);                                                    \
} else {                                                            \
    do {                                                            \
        for (ethash_uint64_t i = 0; i < len; i += 1)                \
        {                                                           \
            out_buffer_8[i] = in_buffer_8[i];                       \
        }                                                           \
    } while(0);                                                     \
}

static inline void mem_copy_device_to_thread(
                               DEVICESPACE(void) *src,
                               THREADSPACE(void) *dst,
                               ethash_uint64_t len)
{
    DEVICESPACE(ethash_uint32_t) *in_buffer_32 = (DEVICESPACE(ethash_uint32_t) *)src;
    THREADSPACE(ethash_uint32_t) *out_buffer_32 = (THREADSPACE(ethash_uint32_t) *)dst;
    DEVICESPACE(ethash_uint8_t) *in_buffer_8 = (DEVICESPACE(ethash_uint8_t) *)src;
    THREADSPACE(ethash_uint8_t) *out_buffer_8 = (THREADSPACE(ethash_uint8_t) *)dst;

    MEM_COPY_BODY
}

static inline void mem_copy_device(
                            DEVICESPACE(void) *src,
                            DEVICESPACE(void) *dst,
                            ethash_uint64_t len)
{
    DEVICESPACE(ethash_uint32_t) *in_buffer_32 = (DEVICESPACE(ethash_uint32_t) *)src;
    DEVICESPACE(ethash_uint32_t) *out_buffer_32 = (DEVICESPACE(ethash_uint32_t) *)dst;
    DEVICESPACE(ethash_uint32_t) *in_buffer_8 = (DEVICESPACE(ethash_uint32_t) *)src;
    DEVICESPACE(ethash_uint32_t) *out_buffer_8 = (DEVICESPACE(ethash_uint32_t) *)dst;

    MEM_COPY_BODY
}

static inline void mem_copy_thread_to_device(
                                THREADSPACE(void) *src,
                                DEVICESPACE(void) *dst,
                                ethash_uint64_t len)
{
    THREADSPACE(ethash_uint32_t) *in_buffer_32 = (THREADSPACE(ethash_uint32_t) *)src;
    DEVICESPACE(ethash_uint32_t) *out_buffer_32 = (DEVICESPACE(ethash_uint32_t) *)dst;
    THREADSPACE(ethash_uint32_t) *in_buffer_8 = (THREADSPACE(ethash_uint32_t) *)src;
    DEVICESPACE(ethash_uint32_t) *out_buffer_8 = (DEVICESPACE(ethash_uint32_t) *)dst;

    MEM_COPY_BODY
}

static inline void mem_copy_thread(
                                   THREADSPACE(void) *src,
                                   THREADSPACE(void) *dst,
                                   ethash_uint64_t len)
{
    THREADSPACE(ethash_uint32_t) *in_buffer_32 = (THREADSPACE(ethash_uint32_t) *)src;
    THREADSPACE(ethash_uint32_t) *out_buffer_32 = (THREADSPACE(ethash_uint32_t) *)dst;
    THREADSPACE(ethash_uint32_t) *in_buffer_8 = (THREADSPACE(ethash_uint32_t) *)src;
    THREADSPACE(ethash_uint32_t) *out_buffer_8 = (THREADSPACE(ethash_uint32_t) *)dst;

    MEM_COPY_BODY
}

#if defined(__METAL_MACOS__) || defined(__METAL_IOS__)

#else

#endif

#endif /* mem_h */
