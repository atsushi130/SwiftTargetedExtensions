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
    
    var snakeCaseEncoder: JSONEncoder {
        return JSONEncoder.snakeCaseEncoder
    }
    
    var snakeCaseDecoder: JSONDecoder {
        return JSONDecoder.snakeCaseDecoder
    }
}
