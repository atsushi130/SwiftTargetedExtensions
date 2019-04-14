//
//  JSONEncoder+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2019/04/14.
//  Copyright © 2019年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension JSONEncoder {
    public static var snakeCaseEncoder: JSONEncoder {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        return encoder
    }
}
