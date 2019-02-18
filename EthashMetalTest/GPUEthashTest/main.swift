//
//  main.swift
//  GPUEthashTest
//
//  Created by Jakub Tomanik on 03/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

import Foundation

//let cpu = EthashTests(backend: EthashCPU())
//cpu?.testUnits()

let cpu = EthashTests(backend: EthashCPP())
cpu?.testUnits()

//let gpu = EthashTests(backend: EthashGPU())
//gpu?.testUnits()

