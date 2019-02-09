//
//  keccak.hpp
//  GPUEthashTest
//
//  Created by Jakub Tomanik on 06/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#ifndef keccak_hpp
#define keccak_hpp

#include <stdio.h>
#include "Ethash.h"

namespace keccak {

    ethash_int32_t keccak_256(
                              const ethash_uint8_t *const in,
                              const ethash_uint64_t inlen,
                              ethash_uint8_t *const out,
                              const ethash_uint64_t outlen
                              );
}

#endif /* keccak_hpp */
