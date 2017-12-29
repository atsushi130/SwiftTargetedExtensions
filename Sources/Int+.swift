//
//  Int+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension Int: ExtensionCompatible {}

extension Extension where Base == Int {
    
    var half: Double {
        return Double(self.base) / 2.0
    }
}
