//
//  Bool+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension Bool: ExtensionCompatible {}

extension Extension where Base == Bool {
    var toInt: Int { return self.base ? 1 : 0 }
}
