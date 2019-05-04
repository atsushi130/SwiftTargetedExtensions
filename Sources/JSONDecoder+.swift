//
//  JSONDecoder+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2019/02/11.
//  Copyright © 2019年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension JSONDecoder {
    static var snakeCaseDecoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
}
