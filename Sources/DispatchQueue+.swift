//
//  DispatchQueue+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/11/24.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension DispatchQueue {
    public static var currentLabel: String {
        return String(validatingUTF8: __dispatch_queue_get_label(nil))!
    }
}
