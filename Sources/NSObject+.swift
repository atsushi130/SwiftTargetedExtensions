//
//  NSObject+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension NSObject: ExtensionCompatible {}

extension Extension where Base: NSObject {
    static var className: String {
        return String(describing: type(of: Base()))
    }
    
    var className: String {
        return type(of: self.base).ex.className
    }
    
    /**
     * deep copy
     * NSCoding の実装が必要
     * @return コピーされたオブジェクト
     */
    func deepCopy<T>() -> T? {
        let data = NSKeyedArchiver.archivedData(withRootObject: self)
        return NSKeyedUnarchiver.unarchiveObject(with: data) as? T
    }
}
