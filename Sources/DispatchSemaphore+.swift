//
//  DispatchSemaphore+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/11/24.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension DispatchSemaphore {
    public static var empty: DispatchSemaphore {
        return DispatchSemaphore(value: 0)
    }
}
