//
//  Date+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension Date: ExtensionCompatible {}

public extension Extension where Base == Date {
    public func toString(by format: String = "yyyy/MM/dd HH:mm:ss", locale: Locale = Locale.current) -> String {
        return DateFormatter.ex.from(locale: locale, format: format).string(from: self.base)
    }
}
