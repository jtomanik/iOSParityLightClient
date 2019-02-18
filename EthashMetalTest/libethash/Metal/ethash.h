//
//  Ethash.h
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 03/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#ifndef Ethash_metal
#define Ethash_metal

#include "../Ethash.h"

#define NULL nullptr
#define MEMORY_BUS_BYTES 4

static_assert(sizeof(ethash_uint64_t) == 8, "Invalid uint64 size");

#endif /* Ethash_metal */
