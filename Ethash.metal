//
//  Ethash.metal
//  
//
//  Created by Jakub Tomanik on 22/01/2019.
//

#include <metal_stdlib>
using namespace metal;

#ifndef ACCESSES
#define ACCESSES 64
#endif

#ifndef GROUP_SIZE
#define GROUP_SIZE 128
#endif

#ifndef MAX_OUTPUTS
#define MAX_OUTPUTS 63U
#endif

#ifndef PLATFORM
#define PLATFORM 2
#endif

#ifndef DAG_SIZE
#define DAG_SIZE 8388593
#endif

#ifndef LIGHT_SIZE
#define LIGHT_SIZE 262139
#endif

#define ETHASH_DATASET_PARENTS 256
#define NODE_WORDS (64/4)

#define THREADS_PER_HASH (128 / 16)
#define HASHES_PER_LOOP (GROUP_SIZE / THREADS_PER_HASH)
#define FNV_PRIME    0x01000193


const uint2 const Keccak_f1600_RC[24] = {
    (uint2)(0x00000001, 0x00000000),
    (uint2)(0x00008082, 0x00000000),
    (uint2)(0x0000808a, 0x80000000),
    (uint2)(0x80008000, 0x80000000),
    (uint2)(0x0000808b, 0x00000000),
    (uint2)(0x80000001, 0x00000000),
    (uint2)(0x80008081, 0x80000000),
    (uint2)(0x00008009, 0x80000000),
    (uint2)(0x0000008a, 0x00000000),
    (uint2)(0x00000088, 0x00000000),
    (uint2)(0x80008009, 0x00000000),
    (uint2)(0x8000000a, 0x00000000),
    (uint2)(0x8000808b, 0x00000000),
    (uint2)(0x0000008b, 0x80000000),
    (uint2)(0x00008089, 0x80000000),
    (uint2)(0x00008003, 0x80000000),
    (uint2)(0x00008002, 0x80000000),
    (uint2)(0x00000080, 0x80000000),
    (uint2)(0x0000800a, 0x00000000),
    (uint2)(0x8000000a, 0x80000000),
    (uint2)(0x80008081, 0x80000000),
    (uint2)(0x00008080, 0x80000000),
    (uint2)(0x80000001, 0x00000000),
    (uint2)(0x80008008, 0x80000000),
};

static uint2 ROL2(const uint2 v, const int n)
{
    uint2 result;
    if (n <= 32)
    {
        result.y = ((v.y << (n)) | (v.x >> (32 - n)));
        result.x = ((v.x << (n)) | (v.y >> (32 - n)));
    }
    else
    {
        result.y = ((v.x << (n - 32)) | (v.y >> (64 - n)));
        result.x = ((v.y << (n - 32)) | (v.x >> (64 - n)));
    }
    return result;
}

static void chi(uint2 * a, const uint n, const uint2 * t)
{
    a[n+0] = select(t[n + 0] ^ t[n + 2], t[n + 0], t[n + 1]);
    a[n+1] = select(t[n + 1] ^ t[n + 3], t[n + 1], t[n + 2]);
    a[n+2] = select(t[n + 2] ^ t[n + 4], t[n + 2], t[n + 3]);
    a[n+3] = select(t[n + 3] ^ t[n + 0], t[n + 3], t[n + 4]);
    a[n+4] = select(t[n + 4] ^ t[n + 1], t[n + 4], t[n + 0]);
}

static void keccak_f1600_round(uint2* a, uint r)
{
    uint2 t[25];
    uint2 u;

    // Theta
    t[0] = a[0] ^ a[5] ^ a[10] ^ a[15] ^ a[20];
    t[1] = a[1] ^ a[6] ^ a[11] ^ a[16] ^ a[21];
    t[2] = a[2] ^ a[7] ^ a[12] ^ a[17] ^ a[22];
    t[3] = a[3] ^ a[8] ^ a[13] ^ a[18] ^ a[23];
    t[4] = a[4] ^ a[9] ^ a[14] ^ a[19] ^ a[24];
    u = t[4] ^ ROL2(t[1], 1);
    a[0] ^= u;
    a[5] ^= u;
    a[10] ^= u;
    a[15] ^= u;
    a[20] ^= u;
    u = t[0] ^ ROL2(t[2], 1);
    a[1] ^= u;
    a[6] ^= u;
    a[11] ^= u;
    a[16] ^= u;
    a[21] ^= u;
    u = t[1] ^ ROL2(t[3], 1);
    a[2] ^= u;
    a[7] ^= u;
    a[12] ^= u;
    a[17] ^= u;
    a[22] ^= u;
    u = t[2] ^ ROL2(t[4], 1);
    a[3] ^= u;
    a[8] ^= u;
    a[13] ^= u;
    a[18] ^= u;
    a[23] ^= u;
    u = t[3] ^ ROL2(t[0], 1);
    a[4] ^= u;
    a[9] ^= u;
    a[14] ^= u;
    a[19] ^= u;
    a[24] ^= u;

    // Rho Pi

    t[0]  = a[0];
    t[10] = ROL2(a[1], 1);
    t[20] = ROL2(a[2], 62);
    t[5]  = ROL2(a[3], 28);
    t[15] = ROL2(a[4], 27);

    t[16] = ROL2(a[5], 36);
    t[1]  = ROL2(a[6], 44);
    t[11] = ROL2(a[7], 6);
    t[21] = ROL2(a[8], 55);
    t[6]  = ROL2(a[9], 20);

    t[7]  = ROL2(a[10], 3);
    t[17] = ROL2(a[11], 10);
    t[2]  = ROL2(a[12], 43);
    t[12] = ROL2(a[13], 25);
    t[22] = ROL2(a[14], 39);

    t[23] = ROL2(a[15], 41);
    t[8]  = ROL2(a[16], 45);
    t[18] = ROL2(a[17], 15);
    t[3]  = ROL2(a[18], 21);
    t[13] = ROL2(a[19], 8);

    t[14] = ROL2(a[20], 18);
    t[24] = ROL2(a[21], 2);
    t[9]  = ROL2(a[22], 61);
    t[19] = ROL2(a[23], 56);
    t[4]  = ROL2(a[24], 14);

    // Chi
    chi(a, 0, t);

    // Iota
    a[0] ^= Keccak_f1600_RC[r];

    chi(a, 5, t);
    chi(a, 10, t);
    chi(a, 15, t);
    chi(a, 20, t);
}

static void keccak_f1600_no_absorb(uint2* a, uint out_size, uint isolate)
{
    // Originally I unrolled the first and last rounds to interface
    // better with surrounding code, however I haven't done this
    // without causing the AMD compiler to blow up the VGPR usage.


    //uint o = 25;
    for (uint r = 0; r < 24;)
    {
        // This dynamic branch stops the AMD compiler unrolling the loop
        // and additionally saves about 33% of the VGPRs, enough to gain another
        // wavefront. Ideally we'd get 4 in flight, but 3 is the best I can
        // massage out of the compiler. It doesn't really seem to matter how
        // much we try and help the compiler save VGPRs because it seems to throw
        // that information away, hence the implementation of keccak here
        // doesn't bother.
        if (isolate)
        {
            keccak_f1600_round(a, r++);
            //if (r == 23) o = out_size;
        }
    }


    // final round optimised for digest size
    //keccak_f1600_round(a, 23, out_size);
}

static uint fnv(uint x, uint y)
{
    return x * FNV_PRIME ^ y;
}

static uint4 fnv4(uint4 x, uint4 y)
{
    return x * FNV_PRIME ^ y;
}

static uint fnv_reduce(uint4 v)
{
    return fnv(fnv(fnv(v.x, v.y), v.z), v.w);
}

typedef struct
{
    ulong ulongs[32 / sizeof(ulong)];
} hash32_t;

typedef union {
    uint     words[64 / sizeof(uint)];
    uint2     uint2s[64 / sizeof(uint2)];
    uint4     uint4s[64 / sizeof(uint4)];
} hash64_t;

typedef union {
    uint     words[200 / sizeof(uint)];
    uint2     uint2s[200 / sizeof(uint2)];
    uint4     uint4s[200 / sizeof(uint4)];
} hash200_t;

typedef struct
{
    uint4 uint4s[128 / sizeof(uint4)];
} hash128_t;

typedef union {
    uint4 uint4s[4];
    ulong ulongs[8];
    uint  uints[16];
} compute_hash_share;

static void SHA3_512(uint2* s, uint isolate)
{
    for (uint i = 8; i != 25; ++i)
    {
        s[i] = (uint2){ 0, 0 };
    }
    s[8].x = 0x00000001;
    s[8].y = 0x80000000;
    keccak_f1600_no_absorb(s, 8, isolate);
}
