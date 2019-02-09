//
//  keccak.cpp
//  GPUEthashTest
//
//  Created by Jakub Tomanik on 06/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#include "keccak.hpp"

#define MEMORY_BUS_BYTES 4

namespace keccak {

    /******** The Keccak-f[1600] permutation ********/

#define KECCAK_ROUNDS 24

    /*** Constants. ***/
    static const ethash_uint8_t rho[24] = {
        1,  3,  6, 10, 15, 21, 28, 36,
        45, 55,  2, 14, 27, 41, 56,  8,
        25, 43, 62, 18, 39, 61, 20, 44
    };

    static const ethash_uint8_t pi[24] = {
        10,  7, 11, 17, 18,  3,  5, 16,
        8, 21, 24,  4, 15, 23, 19, 13,
        12,  2, 20, 14, 22,  9,  6,  1
    };

    static const ethash_uint64_t RC[24] = {
        0x0000000000000001, 0x0000000000008082, 0x800000000000808a, 0x8000000080008000,
        0x000000000000808b, 0x0000000080000001, 0x8000000080008081, 0x8000000000008009,
        0x000000000000008a, 0x0000000000000088, 0x0000000080008009, 0x000000008000000a,
        0x000000008000808b, 0x800000000000008b, 0x8000000000008089, 0x8000000000008003,
        0x8000000000008002, 0x8000000000000080, 0x000000000000800a, 0x800000008000000a,
        0x8000000080008081, 0x8000000000008080, 0x0000000080000001, 0x8000000080008008
    };

    /*** Helper macros to unroll the permutation. ***/
#define rol(x, s) (((x) << s) | ((x) >> (64 - s)))
#define REPEAT6(e) e e e e e e
#define REPEAT24(e) REPEAT6(e e e e)
#define REPEAT5(e) e e e e e
#define FOR5(v, s, e)                         \
v = 0;                                        \
REPEAT5(e; v += s;)

    /*** Keccak-f[1600] ***/
    static inline void keccakf(void *state) {
        ethash_uint64_t *a = (ethash_uint64_t *)state;
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
            REPEAT24(b[0] = a[pi[x]];
                     a[pi[x]] = rol(t, rho[x]);
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

#define _(S) do { S } while (0)

#define FOR(i, ST, L, S)          \
_(for (ethash_uint64_t i = 0; i < L; i += ST) { S; })

    static inline void xorin(
                             ethash_uint8_t *const dst,
                             const ethash_uint8_t *const src,
                             const ethash_uint64_t len)
    {
        if (len % MEMORY_BUS_BYTES == 0) {
            ethash_uint32_t *in_buffer = (ethash_uint32_t *)src;
            ethash_uint32_t *out_buffer = (ethash_uint32_t *)dst;
            ethash_uint64_t len_32 = len / MEMORY_BUS_BYTES;
            do {
                for (ethash_uint64_t i = 0; i < len_32; i += 1)
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
                              const ethash_uint8_t *const src,
                              ethash_uint8_t *const dst,
                              const ethash_uint64_t len)
    {
        if (len % MEMORY_BUS_BYTES == 0) {
            ethash_uint32_t *in_buffer = (ethash_uint32_t *)src;
            ethash_uint32_t *out_buffer = (ethash_uint32_t *)dst;
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

    static inline void mem_clear_200(ethash_uint8_t *b)
    {
        ethash_uint32_t *buffer = (ethash_uint32_t *)b;
        for (ethash_uint32_t i = 0; i < (Plen / ETHASH_WORD_BYTES); i++) {
            buffer[i] = 0;
        }
    }

    /** The sponge-based hash construction. **/
    static inline ethash_int32_t hash(
                                      const ethash_uint8_t *in,
                                      ethash_uint64_t inlen,
                                      ethash_uint8_t *out,
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
                              const ethash_uint8_t *const in,
                              const ethash_uint64_t inlen,
                              ethash_uint8_t *const out,
                              const ethash_uint64_t outlen
                              )
    {
        if (outlen > (256/8)) {
            return -1;
        }
        const ethash_uint8_t *mutable_in = in;
        ethash_uint8_t *mutable_out = out;
        ethash_uint64_t mutable_inlen = inlen;
        ethash_uint64_t mutable_outlen = outlen;
        return hash(mutable_in, mutable_inlen, mutable_out, mutable_outlen, Plen - (256 / 4), 0x01);
    }

    //ethash_int32_tkeccak_512(
    //               const ethash_uint8_t *const in,
    //               const ethash_uint64_t inlen,
    //               ethash_uint8_t *const out,
    //               const ethash_uint64_t outlen
    //               )
    //{
    //    if (outlen > (512/8)) {
    //        return -1;
    //    }
    //    return hash(in, inlen, out, outlen, 200 - (512 / 4), 0x01);
    //}
    //

}
