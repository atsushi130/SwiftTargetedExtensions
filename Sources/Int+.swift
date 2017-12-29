//
//  Int+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension Int: ExtensionCompatible {}

public extension Extension where Base == Int {
    
    public var half: Double {
        return Double(self.base) / 2.0
    }
}
