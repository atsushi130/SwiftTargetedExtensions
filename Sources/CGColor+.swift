//
//  CGColor+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import UIKit

extension CGColor: ExtensionCompatible {}

public extension Extension where Base == CGColor {
    var uiColor: UIColor {
        return UIColor(cgColor: self.base)
    }
}
