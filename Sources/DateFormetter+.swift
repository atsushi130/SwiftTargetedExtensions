//
//  DateFormetter+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension Extension where Base: DateFormatter {
    static func from(locale: Locale, format: String) -> DateFormatter {
        let formatter = DateFormatter()
        formatter.locale     = locale
        formatter.dateFormat = format
        return formatter
    }
}
