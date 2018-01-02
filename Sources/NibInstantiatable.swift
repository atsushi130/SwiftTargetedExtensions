//
//  NibInstantiatable.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

public protocol NibInstantiatable {}

public extension NibInstantiatable where Self: UIView {
    public static func instantiate() -> Self {
        let nib = UINib(nibName: String(describing: Self.self), bundle: Bundle(for: self))
        return nib.instantiate(withOwner: self, options: nil).first as! Self
    }
}
