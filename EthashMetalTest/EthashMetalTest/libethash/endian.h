#pragma once

#include <stdint.h>

#if defined(__APPLE__)
# include <machine/endian.h>
#elif defined( BSD ) && (BSD >= 199103)
# include <machine/endian.h>
#else
# include <endian.h>
#endif

#if defined(__APPLE__)
#include <libkern/OSByteOrder.h>
#define ethash_swap_u32(input_) OSSwapInt32(input_)
#define ethash_swap_u64(input_) OSSwapInt64(input_)
#elif defined(__FreeBSD__) || defined(__NetBSD__)
#define ethash_swap_u32(input_) bswap32(input_)
#define ethash_swap_u64(input_) bswap64(input_)
#else // posix
#include <byteswap.h>
#define ethash_swap_u32(input_) __bswap_32(input_)
#define ethash_swap_u64(input_) __bswap_64(input_)
#endif


#if LITTLE_ENDIAN == BYTE_ORDER

#define fix_endian32(dst_ ,src_) dst_ = src_
#define fix_endian32_same(val_)
#define fix_endian64(dst_, src_) dst_ = src_
#define fix_endian64_same(val_)
#define fix_endian_arr32(arr_, size_)
#define fix_endian_arr64(arr_, size_)

#elif BIG_ENDIAN == BYTE_ORDER

#define fix_endian32(dst_, src_) dst_ = ethash_swap_u32(src_)
#define fix_endian32_same(val_) val_ = ethash_swap_u32(val_)
#define fix_endian64(dst_, src_) dst_ = ethash_swap_u64(src_
#define fix_endian64_same(val_) val_ = ethash_swap_u64(val_)
#define fix_endian_arr32(arr_, size_)			\
do {										\
for (unsigned i_ = 0; i_ < (size_), ++i_) { \
arr_[i_] = ethash_swap_u32(arr_[i_]);	\
}											\
while (0)
#define fix_endian_arr64(arr_, size_)			\
do {										\
for (unsigned i_ = 0; i_ < (size_), ++i_) { \
arr_[i_] = ethash_swap_u64(arr_[i_]);	\
}											\
while (0)									\

#else
# error "endian not supported"
#endif // BYTE_ORDER
