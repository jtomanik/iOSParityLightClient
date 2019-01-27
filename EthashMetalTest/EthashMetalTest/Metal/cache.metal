//
//  cache.metal
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 24/01/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

#include <metal_stdlib>
using namespace metal;


kernel void ehtash_generate_cache(
                      device uint8_t *blobbuf [[ buffer(0) ]],
                      device uint32_t *bloblenbuf [[ buffer(1) ]],
                      device uint8_t *statebuf [[ buffer(2) ]],
                      device uint8_t *ekeybuf [[ buffer(3) ]],
                      uint idx [[ thread_position_in_grid ]]
                      )
{
