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

    static let kernelFunctionName = "ethash_keccak"

    var device: MTLDevice!
    var library: MTLLibrary!
    var queue: MTLCommandQueue!

    init?() {
        guard let device = MTLCreateSystemDefaultDevice(),
            let library = device.makeDefaultLibrary(),
            let queue = device.makeCommandQueue() else {
            return nil
        }
        self.device = device
        self.library = library
        self.queue = queue
    }

    func testUnits() {
        testKeccak()
    }

    private func testKeccak() {
        // SHA3_256
        testStringKeccak256()
    }

    private func keccak256(from string: String) -> ethash_h256_t? {

        let kernelFunctionName = "ethash_keccak"
        let data = string.data(using: String.Encoding.ascii)!

        let threadsPerGroup = MTLSize(width:1, height:1, depth:1)
        let numThreadgroups = MTLSize(width:1, height:1, depth:1)
//        let threadExecutionWidth = computePipelineState.threadExecutionWidth // 64

        let kernelFunction = require(library.makeFunction(name: kernelFunctionName),
                                     orDie: "Failed to retrieve kernel function \(EthashGPU.kernelFunctionName) from library")
        let computePipelineState = require(try device.makeComputePipelineState(function: kernelFunction),
                                      orDie: "newComputePipelineStateWithFunction failed")
        let commandBuffer = require(queue.makeCommandBuffer(),
                                    orDie:"Failed to create command buffer")
        let commandEncoder = require(commandBuffer.makeComputeCommandEncoder(),
                                     orDie: "Failed to create command encoder")

        commandEncoder.setComputePipelineState(computePipelineState)

        // in buffer
        let lenght = data.count
        let in_buffer = require(device.makeBuffer(length: lenght, options: .cpuCacheModeWriteCombined),
                                orDie: "in_buffer")
        let in_buffer_pointer = in_buffer.contents().bindMemory(to: ethash_uint8_t.self, capacity: lenght)
        data.withUnsafeBytes { (pointer: UnsafePointer<ethash_uint8_t>) -> Void in
            in_buffer_pointer.assign(from: pointer, count: lenght)
        }
        commandEncoder.setBuffer(in_buffer, offset: 0, index: 0)

        // in buffer size
        let size: ethash_uint32_t = UInt32(lenght)
        let size_buffer = require(device.makeBuffer(length: Int(ETHASH_WORD_BYTES), options: .cpuCacheModeWriteCombined),
                                  orDie: "Failed to allocate the buffer")
        let size_buffer_pointer = size_buffer.contents().bindMemory(to: ethash_uint32_t.self, capacity: 1)
        size_buffer_pointer.initialize(to: size)
        commandEncoder.setBuffer(size_buffer, offset: 0, index: 1)

        // return buffer
        let hash_buffer = require(device.makeBuffer(length: Int(ETHASH_SHORT_HASH_BYTES), options: .storageModeShared),
                                  orDie: "Failed to allocate the buffer")
        let hash_buffer_pointer = hash_buffer.contents().bindMemory(to: ethash_h256_t.self, capacity: 1)
        commandEncoder.setBuffer(hash_buffer, offset: 0, index: 2)

        // result return buffer
        let result_buffer = require(device.makeBuffer(length: MemoryLayout<ethash_int32_t>.stride, options: .storageModeShared),
                                  orDie: "Failed to allocate the buffer")
        let result_buffer_pointer = result_buffer.contents().bindMemory(to: ethash_int32_t.self, capacity: 1)
        commandEncoder.setBuffer(result_buffer, offset: 0, index: 3)

        commandEncoder.dispatchThreadgroups(numThreadgroups, threadsPerThreadgroup: threadsPerGroup)
        commandEncoder.endEncoding()

        commandBuffer.commit()
        commandBuffer.waitUntilCompleted()

        print("result: \(result_buffer_pointer.pointee)")

        if result_buffer_pointer.pointee == 0 {
            return hash_buffer_pointer.pointee
        } else {
            return nil
        }
    }

    private func testStringKeccak256() {
        let inputString = "abc"

        var expected = ethash_h256_t()
        expected.b = (
            0x4e, 0x03, 0x65, 0x7a, 0xea, 0x45, 0xa9, 0x4f, 0xc7, 0xd4, 0x7b, 0xa8, 0x26, 0xc8, 0xd6, 0x67,
            0xc0, 0xd1, 0xe6, 0xe3, 0x3a, 0x64, 0xa0, 0x36, 0xec, 0x44, 0xf5, 0x8f, 0xa1, 0x2d, 0x6c, 0x45)

        guard let result = keccak256(from: inputString) else {
            print("ERROR: generating keccak 256 failed")
            return
        }

        if result == expected {
            print("TEST: keccak 256 empty string ok")
        } else {
            print(result.b)
            print("ERROR: generating keccak 256 failed")
            print(expected.b)
        }
    }
}

fileprivate func require<T>(_ expr: @autoclosure () throws -> T?, orDie message: @autoclosure () -> String) -> T
{
    do {
        if let result = try expr() { return result }
        else { print(message()) }
    }
    catch {
        print(message())
        print("error: \(error)")
    }
    fatalError()
}
