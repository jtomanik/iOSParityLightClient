//
//  Common.swift
//  EthashMetalTest
//
//  Created by Jakub Tomanik on 03/02/2019.
//  Copyright © 2019 Jakub Tomanik. All rights reserved.
//

import Foundation

extension ethash_h256: Equatable {
    public static func == (lhs: ethash_h256, rhs: ethash_h256) -> Bool {
        return (
            lhs.b.0 == rhs.b.0 &&
                lhs.b.1 == rhs.b.1 &&
                lhs.b.2 == rhs.b.2 &&
                lhs.b.3 == rhs.b.3 &&
                lhs.b.4 == rhs.b.4 &&
                lhs.b.5 == rhs.b.5 &&
                lhs.b.6 == rhs.b.6 &&
                lhs.b.7 == rhs.b.7 &&
                lhs.b.8 == rhs.b.8 &&
                lhs.b.9 == rhs.b.9 &&
                lhs.b.10 == rhs.b.10 &&
                lhs.b.11 == rhs.b.11 &&
                lhs.b.12 == rhs.b.12 &&
                lhs.b.13 == rhs.b.13 &&
                lhs.b.14 == rhs.b.14 &&
                lhs.b.15 == rhs.b.15 &&
                lhs.b.16 == rhs.b.16 &&
                lhs.b.17 == rhs.b.17 &&
                lhs.b.18 == rhs.b.18 &&
                lhs.b.19 == rhs.b.19 &&
                lhs.b.20 == rhs.b.20 &&
                lhs.b.21 == rhs.b.21 &&
                lhs.b.22 == rhs.b.22 &&
                lhs.b.23 == rhs.b.23 &&
                lhs.b.24 == rhs.b.24 &&
                lhs.b.25 == rhs.b.25 &&
                lhs.b.26 == rhs.b.26 &&
                lhs.b.27 == rhs.b.27 &&
                lhs.b.28 == rhs.b.28 &&
                lhs.b.29 == rhs.b.29 &&
                lhs.b.30 == rhs.b.30 &&
                lhs.b.31 == rhs.b.31
        )
    }
}
extension ethash_node: Equatable {
    public static func == (lhs: ethash_node, rhs: ethash_node) -> Bool {
        return (
            lhs.double_words.0 == rhs.double_words.0 &&
                lhs.double_words.1 == rhs.double_words.1 &&
                lhs.double_words.2 == rhs.double_words.2 &&
                lhs.double_words.3 == rhs.double_words.3 &&
                lhs.double_words.4 == rhs.double_words.4 &&
                lhs.double_words.5 == rhs.double_words.5 &&
                lhs.double_words.6 == rhs.double_words.6 &&
                lhs.double_words.7 == rhs.double_words.7
        )
    }
}
