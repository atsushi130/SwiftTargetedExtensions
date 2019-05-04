//
//  UUID+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension UUID: ExtensionCompatible {}

public extension Extension where Base == UUID {
    static func generate() -> String {
        return UUID().uuidString
    }
}
