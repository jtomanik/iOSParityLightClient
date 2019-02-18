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

    fileprivate var device: MTLDevice!
    fileprivate var library: MTLLibrary!
    fileprivate var queue: MTLCommandQueue!

    init?() {
        guard let device = MTLCreateSystemDefaultDevice(),
            let library = try? device.makeLibrary(filepath:
                "/Users/jakubtomanik/Documents/StaticLibTest/EthashMetalTest/targets/EthashMetalLib-Mac.metallib"),
            let queue = device.makeCommandQueue() else {
                print("Failed to initialize Metal")
                return nil
        }
        self.device = device
        self.library = library
        self.queue = queue
    }
}

extension EthashGPU: EthashBackend {
    var name: String {
        return "GPU"
    }

    func calculateKeccak256(from inputString: String, callback: ((ethash_h256_t?) -> Void)) {
        callback(gpuKeccak256(from: inputString))
    }

    func calculateKeccak512(from inputString: String, callback: ((ethash_node?) -> Void)) {
        callback(gpuKeccak512(from: inputString))
    }

    func calculateSeedhash(for blocknumber: ethash_uint64_t, otherBlocknumber: ethash_uint64_t?, callback: ((ethash_h256_t?) -> Void)) {
        if let other = otherBlocknumber {
            _ = gpuSeedhash(for: other)
        }
        callback(gpuSeedhash(for: blocknumber))
//        callback(nil)
    }

    func generateCache(for blocknumber: ethash_uint64_t, callback: (([ethash_node_t]?) -> Void)) {
        callback(nil)
    }

    func calculateDAGItem(for blocknumber: ethash_uint64_t, callback: ((ethash_node_t?) -> Void)) {
        callback(nil)
    }


}

extension EthashGPU {

    private func makeCommandEntities(forFunction kernelFunctionName: String) -> (MTLComputeCommandEncoder, MTLCommandBuffer) {
        guard self.library.functionNames.contains(kernelFunctionName) else {
            print("Function: \(kernelFunctionName) not present in the libraey")
            fatalError()
        }
        let kernelFunction = require(library.makeFunction(name: kernelFunctionName),
                                     orDie: "Failed to retrieve kernel function \(EthashGPU.kernelFunctionName) from library")
        let computePipelineState = require(try device.makeComputePipelineState(function: kernelFunction),
                                           orDie: "newComputePipelineStateWithFunction failed")
        let commandBuffer = require(queue.makeCommandBuffer(),
                                    orDie:"Failed to create command buffer")
        let commandEncoder = require(commandBuffer.makeComputeCommandEncoder(),
                                     orDie: "Failed to create command encoder")

        commandEncoder.setComputePipelineState(computePipelineState)
        return (commandEncoder, commandBuffer)
    }

    private func gpuKeccak256(from string: String) -> ethash_h256_t? {
        let data = string.data(using: String.Encoding.ascii)!
        let lenght = data.count

        let threadsPerGroup = MTLSize(width:1, height:1, depth:1)
        let numThreadgroups = MTLSize(width:1, height:1, depth:1)
        // let threadExecutionWidth = computePipelineState.threadExecutionWidth // 64

        let command = makeCommandEntities(forFunction: "ethash_keccak_256")
        let commandEncoder = command.0
        let commandBuffer = command.1
        commandEncoder.setInputBuffer(with: data, atIndex: 0)
        commandEncoder.setInputBufferLength(to: lenght, atIndex: 1)
        let hash_buffer_pointer: UnsafeMutablePointer<ethash_h256_t> = commandEncoder.makeReturnBuffer(atIndex: 2)
        let result_buffer_pointer: UnsafeMutablePointer<ethash_int32_t> = commandEncoder.makeReturnBuffer(atIndex: 3)
        commandEncoder.dispatchThreadgroups(numThreadgroups, threadsPerThreadgroup: threadsPerGroup)
        commandEncoder.endEncoding()

        commandBuffer.commit()
        commandBuffer.waitUntilCompleted()

        if result_buffer_pointer.pointee == 0 {
            return hash_buffer_pointer.pointee
        } else {
            return nil
        }
    }

    private func gpuKeccak512(from string: String) -> ethash_node_t? {
        let data = string.data(using: String.Encoding.ascii)!
        let lenght = data.count

        let threadsPerGroup = MTLSize(width:1, height:1, depth:1)
        let numThreadgroups = MTLSize(width:1, height:1, depth:1)
        // let threadExecutionWidth = computePipelineState.threadExecutionWidth // 64

        let command = makeCommandEntities(forFunction: "ethash_keccak_512")
        let commandEncoder = command.0
        let commandBuffer = command.1

        commandEncoder.setInputBuffer(with: data, atIndex: 0)
        commandEncoder.setInputBufferLength(to: lenght, atIndex: 1)
        let node_buffer_pointer: UnsafeMutablePointer<ethash_node_t> = commandEncoder.makeReturnBuffer(atIndex: 2)
        let result_buffer_pointer: UnsafeMutablePointer<ethash_int32_t> = commandEncoder.makeReturnBuffer(atIndex: 3)

        commandEncoder.dispatchThreadgroups(numThreadgroups, threadsPerThreadgroup: threadsPerGroup)
        commandEncoder.endEncoding()

        commandBuffer.commit()
        commandBuffer.waitUntilCompleted()

        if result_buffer_pointer.pointee == 0 {
            return node_buffer_pointer.pointee
        } else {
            return nil
        }
    }

    private func gpuSeedhash(for block: ethash_uint64_t) -> ethash_h256_t? {
        var copy = block
        let data = Data.init(bytes: &copy, count: MemoryLayout<ethash_uint64_t>.size)

        let threadsPerGroup = MTLSize(width:1, height:1, depth:1)
        let numThreadgroups = MTLSize(width:1, height:1, depth:1)
        // let threadExecutionWidth = computePipelineState.threadExecutionWidth // 64

        let command = makeCommandEntities(forFunction: "ethash_get_seedhash")
        let commandEncoder = command.0
        let commandBuffer = command.1

        commandEncoder.setInputBuffer(withBlocknumber: block, atIndex: 0)
        let hash_buffer_pointer: UnsafeMutablePointer<ethash_h256_t> = commandEncoder.makeReturnBuffer(atIndex: 2)
//        let result_buffer_pointer: UnsafeMutablePointer<ethash_int32_t> = commandEncoder.makeReturnBuffer(atIndex: 2)

        commandEncoder.dispatchThreadgroups(numThreadgroups, threadsPerThreadgroup: threadsPerGroup)
        commandEncoder.endEncoding()

        commandBuffer.commit()
        commandBuffer.waitUntilCompleted()

        return hash_buffer_pointer.pointee

//        if result_buffer_pointer.pointee > 0 {
//            return node_buffer_pointer.pointee
//        } else {
//            return nil
//        }
    }
}

extension MTLComputeCommandEncoder {

    func setInputBuffer(withBlocknumber blocknumber: ethash_uint64_t, atIndex index: Int) {
        let lowerMask: ethash_uint64_t = 0xFFFFFFFF
        let upperMask: ethash_uint64_t = 0xFFFFFFFF00000000
        let lowerBlocknumber = UInt32(blocknumber & lowerMask)
        let upperBlocknumber = UInt32( (blocknumber & upperMask) >> 32 )
        setInputBufferLength(to: Int(lowerBlocknumber), atIndex: index)
        setInputBufferLength(to: Int(upperBlocknumber), atIndex: index+1)
    }

    func setInputBuffer(with data: Data, atIndex index: Int) {
        let in_buffer: MTLBuffer

        switch data.count {
        case 0:
            in_buffer = require(device.makeBuffer(length: 1, options: .cpuCacheModeWriteCombined),
                                orDie: "in_buffer")
        default:
            let lenght = data.count
            in_buffer = require(device.makeBuffer(length: lenght, options: .cpuCacheModeWriteCombined),
                                orDie: "in_buffer")
            let in_buffer_pointer = in_buffer.contents().bindMemory(to: ethash_uint8_t.self, capacity: lenght)
            data.withUnsafeBytes { (pointer: UnsafePointer<ethash_uint8_t>) -> Void in
                in_buffer_pointer.assign(from: pointer, count: lenght)
            }
        }
        self.setBuffer(in_buffer, offset: 0, index: index)
    }

    func setInputBufferLength(to length: Int, atIndex index: Int) {
        let size: ethash_uint32_t = UInt32(length)
        let size_buffer = require(device.makeBuffer(length: MemoryLayout<ethash_uint32_t>.stride, options: .cpuCacheModeWriteCombined),
                                  orDie: "Failed to allocate the buffer")
        let size_buffer_pointer = size_buffer.contents().bindMemory(to: ethash_uint32_t.self, capacity: 1)
        size_buffer_pointer.initialize(to: size)
        self.setBuffer(size_buffer, offset: 0, index: index)
    }

    func makeReturnBuffer<T>(atIndex index: Int) -> UnsafeMutablePointer<T> {
        let return_buffer = require(device.makeBuffer(length: MemoryLayout<T>.stride, options: .storageModeShared),
                                    orDie: "Failed to allocate the buffer")
        let return_buffer_pointer = return_buffer.contents().bindMemory(to: T.self, capacity: 1)
        self.setBuffer(return_buffer, offset: 0, index: index)
        return return_buffer_pointer
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
