//
//  JSONCoder.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2019/04/14.
//  Copyright © 2019年 Atsushi Miyake. All rights reserved.
//

import Foundation

public enum JSONCoder {}

public extension JSONCoder {
    
    public var snakeCaseEncoder: JSONEncoder {
        return JSONEncoder.snakeCaseEncoder
    }
    
    public var snakeCaseDecoder: JSONDecoder {
        return JSONDecoder.snakeCaseDecoder
    }
}
