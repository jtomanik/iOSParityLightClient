/** libkeccak-tiny
 *
 * A single-file implementation of SHA-3 and SHAKE.
 *
 * Implementor: David Leon Gil
 * License: CC0, attribution kindly requested. Blame taken too,
 * but not liability.
 */

#include "keccak.hpp"
#include "mem.hpp"

/*** Helper macros to unroll the permutation. ***/
#define rol(x, s) (((x) << s) | ((x) >> (64 - s)))
#define REPEAT6(e) e e e e e e
#define REPEAT24(e) REPEAT6(e e e e)
#define REPEAT5(e) e e e e e
#define FOR5(v, s, e)                         \
v = 0;                                        \
REPEAT5(e; v += s;)

/*** Keccak-f[1600] ***/

#define KECCAKF_BODY                                                    \
ethash_uint64_t b[5] = {0};                                             \
ethash_uint64_t t = 0;                                                  \
ethash_uint8_t x, y;                                                    \
for (int i = 0; i < KECCAK_ROUNDS; i++) {                               \
    FOR5(x, 1,                                                          \
         b[x] = 0;                                                      \
         FOR5(y, 5,                                                     \
              b[x] ^= a[x + y]; ))                                      \
    FOR5(x, 1,                                                          \
         FOR5(y, 5,                                                     \
              a[y + x] ^= b[(x + 4) % 5] ^ rol(b[(x + 1) % 5], 1); ))   \
    t = a[1];                                                           \
    x = 0;                                                              \
    REPEAT24(b[0] = a[keccak_pi[x]];                                    \
             a[keccak_pi[x]] = rol(t, rho[x]);                          \
             t = b[0];                                                  \
             x++; )                                                     \
    FOR5(y,                                                             \
         5,                                                             \
         FOR5(x, 1,                                                     \
              b[x] = a[y + x];)                                         \
         FOR5(x, 1,                                                     \
              a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]); ))    \
    a[0] ^= RC[i];                                                      \
}

static inline void keccakf_thread(THREADSPACE(void) *state) {
    THREADSPACE(ethash_uint64_t) *a = (THREADSPACE(ethash_uint64_t) *)state;

    KECCAKF_BODY
}

static inline void keccakf_device(DEVICESPACE(void) *state) {
    DEVICESPACE(ethash_uint64_t) *a = (DEVICESPACE(ethash_uint64_t) *)state;

    KECCAKF_BODY
}

/******** The FIPS202-defined functions. ********/

/*** Some helper macros. ***/

#define P keccakf
#define Plen 200

#define XORIN_BODY \
if (len % MEMORY_BUS_BYTES == 0) {                      \
ethash_uint64_t len_64 = len / MEMORY_BUS_BYTES;        \
do {                                                    \
    for (ethash_uint64_t i = 0; i < len_64; i += 1)     \
    {                                                   \
        out_buffer[i] ^= in_buffer[i];                  \
    }                                                   \
} while (0);                                            \
} else {                                                \
    do {                                                \
        for (ethash_uint64_t i = 0; i < len; i += 1)    \
        {                                               \
            dst[i] ^= src[i];                           \
        }                                               \
    } while (0);                                        \
}

static inline void xorin_device_to_thread(
                                          DEVICESPACE(ethash_uint8_t) *src,
                                          THREADSPACE(ethash_uint8_t) *dst,
                                          ethash_uint64_t len)
{
    DEVICESPACE(ethash_uint32_t) *in_buffer = (DEVICESPACE(ethash_uint32_t) *)src;
    THREADSPACE(ethash_uint32_t) *out_buffer = (THREADSPACE(ethash_uint32_t) *)dst;

    XORIN_BODY
}

static inline void xorin_thread(
                                THREADSPACE(ethash_uint8_t) *src,
                                THREADSPACE(ethash_uint8_t) *dst,
                                ethash_uint64_t len)
{
    THREADSPACE(ethash_uint32_t) *in_buffer = (THREADSPACE(ethash_uint32_t) *)src;
    THREADSPACE(ethash_uint32_t) *out_buffer = (THREADSPACE(ethash_uint32_t) *)dst;

    XORIN_BODY
}

static inline void setout_thread_to_device(
                                           THREADSPACE(ethash_uint8_t) *src,
                                           DEVICESPACE(ethash_uint8_t) *dst,
                                           ethash_uint64_t len)
{
    mem_copy_thread_to_device(src, dst, len);
}

static inline void setout_thread(
                                 THREADSPACE(ethash_uint8_t) *src,
                                 THREADSPACE(ethash_uint8_t) *dst,
                                 ethash_uint64_t len)
{
    mem_copy_thread(src, dst, len);
}

static inline void mem_clear_200_thread(
                                        THREADSPACE(ethash_uint8_t) *b)
{
    mem_clear_thread(b, 200);
}

/** The sponge-based hash construction. **/
#define HASH_BODY(src, dst)  \
if ((out == NULL) || ((in == NULL) && inlen != 0) || (rate >= Plen)) {  \
    return -1;                                                          \
}                                                                       \
ethash_uint8_t a[Plen] = {0};                                           \
while (inlen >= rate) {                                                 \
    CONCAT(xorin_,src)(in, a, rate);                                    \
    keccakf_thread(a);                                                  \
    in += rate;                                                         \
    inlen -= rate;                                                      \
}                                                                       \
a[inlen] ^= delim;                                                      \
a[rate - 1] ^= 0x80;                                                    \
CONCAT(xorin_,src)(in, a, inlen);                                       \
keccakf_thread(a);                                                      \
while (outlen >= rate) {                                                \
    CONCAT(setout_,dst)(a, out, rate);                                  \
    keccakf_thread(a);                                                  \
    out += rate;                                                        \
    outlen -= rate;                                                     \
}                                                                       \
CONCAT(setout_,dst)(a, out, outlen);                                    \
mem_clear_200_thread(a);                                                \
return 0;

static inline ethash_int32_t hash_device(
                                  DEVICESPACE(ethash_uint8_t) *in,
                                  ethash_uint64_t inlen,
                                  DEVICESPACE(ethash_uint8_t) *out,
                                  ethash_uint64_t outlen,
                                  ethash_uint64_t rate,
                                  ethash_uint8_t delim)
{
    HASH_BODY(device_to_thread, thread_to_device)
}

static inline ethash_int32_t hash_thread(
                                         THREADSPACE(ethash_uint8_t) *in,
                                         ethash_uint64_t inlen,
                                         THREADSPACE(ethash_uint8_t) *out,
                                         ethash_uint64_t outlen,
                                         ethash_uint64_t rate,
                                         ethash_uint8_t delim)
{
    HASH_BODY(thread, thread)
}

static inline ethash_int32_t hash_device_to_thread(
                                         DEVICESPACE(ethash_uint8_t) *in,
                                         ethash_uint64_t inlen,
                                         THREADSPACE(ethash_uint8_t) *out,
                                         ethash_uint64_t outlen,
                                         ethash_uint64_t rate,
                                         ethash_uint8_t delim)
{
    HASH_BODY(device_to_thread, thread)
}

static inline ethash_int32_t hash_thread_to_device(
                                         THREADSPACE(ethash_uint8_t) *in,
                                         ethash_uint64_t inlen,
                                         DEVICESPACE(ethash_uint8_t) *out,
                                         ethash_uint64_t outlen,
                                         ethash_uint64_t rate,
                                         ethash_uint8_t delim)
{
    HASH_BODY(thread, thread_to_device)
}

ethash_int32_t keccak_256_device(
                                 DEVICESPACE(ethash_uint8_t) *in,
                                 ethash_uint64_t inlen,
                                 DEVICESPACE(ethash_uint8_t) *out,
                                 ethash_uint64_t outlen
                                 )
{
    if (outlen > (256/8)) {
        return -1;
    }
    return hash_device(in, inlen, out, outlen, Plen - (256 / 4), 0x01);
}

ethash_int32_t keccak_256_device_to_thread(
                                           DEVICESPACE(ethash_uint8_t) *in,
                                           ethash_uint64_t inlen,
                                           THREADSPACE(ethash_uint8_t) *out,
                                           ethash_uint64_t outlen
                                           )
{
    if (outlen > (256/8)) {
        return -1;
    }
    return hash_device_to_thread(in, inlen, out, outlen, Plen - (256 / 4), 0x01);
}

ethash_int32_t keccak_256_thread_to_device(
                                           THREADSPACE(ethash_uint8_t) *in,
                                           ethash_uint64_t inlen,
                                           DEVICESPACE(ethash_uint8_t) *out,
                                           ethash_uint64_t outlen
                                           )
{
    if (outlen > (256/8)) {
        return -1;
    }
    return hash_thread_to_device(in, inlen, out, outlen, Plen - (256 / 4), 0x01);
}

ethash_int32_t keccak_256_thread(
                                 THREADSPACE(ethash_uint8_t) *in,
                                 ethash_uint64_t inlen,
                                 THREADSPACE(ethash_uint8_t) *out,
                                 ethash_uint64_t outlen
                                 )
{
    if (outlen > (256/8)) {
        return -1;
    }
    return hash_thread(in, inlen, out, outlen, Plen - (256 / 4), 0x01);
}

ethash_int32_t keccak_512_device(
                                 DEVICESPACE(ethash_uint8_t) *in,
                                 ethash_uint64_t inlen,
                                 DEVICESPACE(ethash_uint8_t) *out,
                                 ethash_uint64_t outlen
                                 )
{
    if (outlen > (512/8)) {
        return -1;
    }
    return hash_device(in, inlen, out, outlen, Plen - (512 / 4), 0x01);
}

ethash_int32_t keccak_512_device_to_thread(
                                           DEVICESPACE(ethash_uint8_t) *in,
                                           ethash_uint64_t inlen,
                                           THREADSPACE(ethash_uint8_t) *out,
                                           ethash_uint64_t outlen
                                           )
{
    if (outlen > (512/8)) {
        return -1;
    }
    return hash_device_to_thread(in, inlen, out, outlen, Plen - (512 / 4), 0x01);
}

ethash_int32_t keccak_512_thread_to_device(
                                           THREADSPACE(ethash_uint8_t) *in,
                                           ethash_uint64_t inlen,
                                           DEVICESPACE(ethash_uint8_t) *out,
                                           ethash_uint64_t outlen
                                           )
{
    if (outlen > (512/8)) {
        return -1;
    }
    return hash_thread_to_device(in, inlen, out, outlen, Plen - (512 / 4), 0x01);
}

ethash_int32_t keccak_512_thread(
                                 THREADSPACE(ethash_uint8_t) *in,
                                 ethash_uint64_t inlen,
                                 THREADSPACE(ethash_uint8_t) *out,
                                 ethash_uint64_t outlen
                                 )
{
    if (outlen > (512/8)) {
        return -1;
    }
    return hash_thread(in, inlen, out, outlen, Plen - (512 / 4), 0x01);
}
