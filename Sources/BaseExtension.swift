//
//  BaseExtension.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

public struct Extension<Base> {
    let base: Base
    init(_ base: Base) {
        self.base = base
    }
}

public protocol ExtensionCompatible {
    associatedtype Compatible
    static var ex: Extension<Compatible>.Type { get }
    var ex: Extension<Compatible> { get }
}

public extension ExtensionCompatible {
    
    public static var ex: Extension<Self>.Type {
        return Extension<Self>.self
    }
    
    public var ex: Extension<Self> {
        return Extension(self)
    }
}
