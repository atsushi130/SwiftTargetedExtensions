//
//  String+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension String: ExtensionCompatible {}

extension Extension where Base == String {
    func toDate(by format: String = "yyyy/MM/dd HH:mm:ss", locale: Locale = Locale.current) -> Date? {
        return DateFormatter.ex.from(locale: locale, format: format).date(from: self.base)
    }
}
