//
//  UIVew+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import UIKit

public extension Extension where Base: UIView {
    public var safeAreaInsets: UIEdgeInsets {
        guard #available(iOS 11.0, *) else { return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) }
        return self.base.safeAreaInsets
    }
}
