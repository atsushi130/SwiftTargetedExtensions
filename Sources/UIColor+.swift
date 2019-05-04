//
//  UIColor+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import UIKit

public extension Extension where Base: UIColor {
    
    static func hex(_ hex: UInt64, alpha: Double = 1.0) -> UIColor {
        let color = Extension<UIColor>.getRgb(hex: hex)
        return UIColor(red: color.red, green: color.green, blue: color.blue, alpha: CGFloat(alpha))
    }
    
    static func hex(string hexString: String, alpha: Double = 1.0) -> UIColor {
        
        let scanner = Scanner(string: hexString.replacingOccurrences(of: "#", with: ""))
        var color: UInt64 = 0
        
        if scanner.scanHexInt64(&color) {
            let color = Extension<UIColor>.getRgb(hex: color)
            return UIColor(red: color.red, green: color.green, blue: color.blue, alpha: CGFloat(alpha))
        } else {
            return UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: CGFloat(alpha))
        }
    }
    
    private static func getRgb(hex: UInt64) -> (red: CGFloat, green: CGFloat, blue: CGFloat) {
        let r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let b = CGFloat(hex & 0x0000FF) / 255.0
        return (red: r, green: g, blue: b)
    }
}
