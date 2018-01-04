//
//  Double+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension Double: ExtensionCompatible {}

public extension Extension where Base == Double {
    
    public var half: Double {
        return self.base / 2.0
    }
    
    public var floor: Double {
        return Foundation.floor(self.base)
    }
    
    public var ceil: Double {
        return Foundation.ceil(self.base)
    }
    
    public var round: Double {
        return Foundation.round(self.base)
    }
    
    public var cgFloat: CGFloat {
        return CGFloat(self.base)
    }
}
