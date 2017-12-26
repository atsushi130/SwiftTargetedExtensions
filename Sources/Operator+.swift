//
//  Operator+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

infix operator ???

public func ???<T>(lhs: T?, error: @autoclosure () -> Error) throws -> T {
    guard let value = lhs else { throw error() }
    return value
}
