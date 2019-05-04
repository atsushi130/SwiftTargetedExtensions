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
    
    var half: Double {
        return self.base / 2.0
    }
    
    var floor: Double {
        return Foundation.floor(self.base)
    }
    
    var ceil: Double {
        return Foundation.ceil(self.base)
    }
    
    var round: Double {
        return Foundation.round(self.base)
    }
    
    var cgFloat: CGFloat {
        return CGFloat(self.base)
    }
}
