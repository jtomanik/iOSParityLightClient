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
static inline void keccakf(THREADSPACE(void) *state) {
    THREADSPACE(ethash_uint64_t) *a = (THREADSPACE(ethash_uint64_t) *)state;
    ethash_uint64_t b[5] = {0};
    ethash_uint64_t t = 0;
    ethash_uint8_t x, y;

    for (int i = 0; i < KECCAK_ROUNDS; i++) {
        // Theta
        FOR5(x, 1,
             b[x] = 0;
             FOR5(y, 5,
                  b[x] ^= a[x + y]; ))
        FOR5(x, 1,
             FOR5(y, 5,
                  a[y + x] ^= b[(x + 4) % 5] ^ rol(b[(x + 1) % 5], 1); ))
        // Rho and pi
        t = a[1];
        x = 0;
        REPEAT24(b[0] = a[keccak_pi[x]];
                 a[keccak_pi[x]] = rol(t, rho[x]);
                 t = b[0];
                 x++; )
        // Chi
        FOR5(y,
             5,
             FOR5(x, 1,
                  b[x] = a[y + x];)
             FOR5(x, 1,
                  a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]); ))
        // Iota
        a[0] ^= RC[i];
    }
}

/******** The FIPS202-defined functions. ********/

/*** Some helper macros. ***/

#define P keccakf
#define Plen 200

static inline void xorin(
                         THREADSPACE(ethash_uint8_t) *const dst,
                         const DEVICESPACE(ethash_uint8_t) *const src,
                         const ethash_uint64_t len)
{
    if (len % MEMORY_BUS_BYTES == 0) {
        DEVICESPACE(ethash_uint32_t) *in_buffer = (DEVICESPACE(ethash_uint32_t) *)src;
        THREADSPACE(ethash_uint32_t) *out_buffer = (THREADSPACE(ethash_uint32_t) *)dst;
        ethash_uint64_t len_64 = len / MEMORY_BUS_BYTES;

        do {
            for (ethash_uint64_t i = 0; i < len_64; i += 1)
            {
                out_buffer[i] ^= in_buffer[i];
            }
        } while (0);
    } else {
        do {
            for (ethash_uint64_t i = 0; i < len; i += 1)
            {
                dst[i] ^= src[i];
            }
        } while (0);
    }
}

static inline void setout(
                          const THREADSPACE(ethash_uint8_t) *const src,
                          DEVICESPACE(ethash_uint8_t) *const dst,
                          const ethash_uint64_t len)
{
    mem_copy_thread_to_device(src, dst, len);
}

static inline void mem_clear_200(THREADSPACE(ethash_uint8_t) *b)
{
    mem_clear_thread(b, 200);
}

/** The sponge-based hash construction. **/
static inline ethash_int32_t hash(
                                  const DEVICESPACE(ethash_uint8_t) *in,
                                  ethash_uint64_t inlen,
                                  DEVICESPACE(ethash_uint8_t) *out,
                                  ethash_uint64_t outlen,
                                  ethash_uint64_t rate,
                                  ethash_uint8_t delim)
{
    if ((out == NULL) || ((in == NULL) && inlen != 0) || (rate >= Plen)) {
        return -1;
    }
    ethash_uint8_t a[Plen] = {0};
    // Absorb input.
    // Fold P * xorin over the full blocks of an input.
    while (inlen >= rate) {
        xorin(a, in, rate);
        P(a);
        in += rate;
        inlen -= rate;
    }
    // Xor in the DS and pad frame.
    a[inlen] ^= delim;
    a[rate - 1] ^= 0x80;
    // Xor in the last block.
    xorin(a, in, inlen);
    // Apply P
    P(a);
    // Squeeze output.
    // Fold P * setout over the full blocks of an input.
    while (outlen >= rate) {
        setout(a, out, rate);
        P(a);
        out += rate;
        outlen -= rate;
    }
    setout(a, out, outlen);
    mem_clear_200(a);
    return 0;
}

ethash_int32_t keccak_256(
                          const DEVICESPACE(ethash_uint8_t) *const in,
                          const ethash_uint64_t inlen,
                          DEVICESPACE(ethash_uint8_t) *const out,
                          const ethash_uint64_t outlen
                          )
{
    if (outlen > (256/8)) {
        return -1;
    }
    const DEVICESPACE(ethash_uint8_t) *mutable_in = in;
    DEVICESPACE(ethash_uint8_t) *mutable_out = out;
    ethash_uint64_t mutable_inlen = inlen;
    ethash_uint64_t mutable_outlen = outlen;
    return hash(mutable_in, mutable_inlen, mutable_out, mutable_outlen, Plen - (256 / 4), 0x01);
}

ethash_int32_t keccak_512(
                          const DEVICESPACE(ethash_uint8_t) *const in,
                          const ethash_uint64_t inlen,
                          DEVICESPACE(ethash_uint8_t) *const out,
                          const ethash_uint64_t outlen
                          )
{
    if (outlen > (512/8)) {
        return -1;
    }
    const DEVICESPACE(ethash_uint8_t) *mutable_in = in;
    DEVICESPACE(ethash_uint8_t) *mutable_out = out;
    ethash_uint64_t mutable_inlen = inlen;
    ethash_uint64_t mutable_outlen = outlen;
    return hash(mutable_in, mutable_inlen, mutable_out, mutable_outlen, Plen - (512 / 4), 0x01);
}
