//
//  Parity.swift
//  StaticLibTest
//
//  Created by Jakub Tomanik on 18/07/2018.
//  Copyright © 2018 Jakub Tomanik. All rights reserved.
//

import Foundation

func onRestart(_: UnsafeMutableRawPointer?, _: UnsafePointer<Int8>?, _: Int) -> Void {}

final class Parity {

    func start() {
        let documentsDirectory = getDirectoryPath()
        print("Docs directory \(documentsDirectory)")
        let args = "--no-ipc --base-path=\(documentsDirectory)"

        var parityClientPointer: UnsafeMutableRawPointer? = nil
        let step2 = parity_start_default(&parityClientPointer, args)
        sleep(10)
        print("parity_start returned \(step2)")
        print("stop")
    }

    func stop() {

    }

    func getDirectoryPath() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentsDirectory = paths[0]
        return documentsDirectory
    }
}
