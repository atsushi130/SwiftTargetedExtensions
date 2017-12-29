//
//  CGFloat+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension CGFloat: ExtensionCompatible {}

public extension Extension where Base == CGFloat {
    
    public var half: CGFloat {
        return self.base / 2.0
    }
    
    public var floor: CGFloat {
        return Foundation.floor(self.base)
    }
    
    public var ceil: CGFloat {
        return Foundation.ceil(self.base)
    }
    
    public var round: CGFloat {
        return Foundation.round(self.base)
    }
}
