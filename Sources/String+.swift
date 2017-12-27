//
//  String+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension String: ExtensionCompatible {}

public extension Extension where Base == String {
    public func toDate(by format: String = "yyyy/MM/dd HH:mm:ss", locale: Locale = Locale.current) -> Date? {
        return DateFormatter.ex.from(locale: locale, format: format).date(from: self.base)
    }
    
    public func isMatch(pattern: String) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [.caseInsensitive])
            return regex.firstMatch(in: self.base, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.base.count)) != nil
        } catch {
            return false
        }
    }
}
