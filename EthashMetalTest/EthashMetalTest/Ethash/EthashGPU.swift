//
//  EthashGPU.swift
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 02/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

import Foundation
import Metal
import simd

class EthashGPU {

    static let kernelFunctionName = ""

    let device: MTLDevice = MTLCreateSystemDefaultDevice()!
    var computePipeline: MTLComputePipelineState!
    var sampler: MTLSamplerState!

    public init() {
        if let library = device.makeDefaultLibrary() {
            if let computeFunction = library.makeFunction(name: EthashGPU.kernelFunctionName) {
                do {
                    try computePipeline = device.makeComputePipelineState(function: computeFunction)
                } catch {
                    print("Error occurred when compiling compute pipeline: \(error)")
                }
            } else {
                print("Failed to retrieve kernel function \(EthashGPU.kernelFunctionName) from library")
            }
        }
    }
}
