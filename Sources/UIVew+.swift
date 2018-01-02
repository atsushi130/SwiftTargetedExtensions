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
    
    public func fillSuperview() {
        guard let superview = self.base.superview else { return }
        self.base.translatesAutoresizingMaskIntoConstraints = superview.translatesAutoresizingMaskIntoConstraints
        if self.base.translatesAutoresizingMaskIntoConstraints {
            self.base.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            self.base.frame            = superview.bounds
        } else {
            self.base.topAnchor.constraint(equalTo: superview.topAnchor).isActive       = true
            self.base.bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
            self.base.leftAnchor.constraint(equalTo: superview.leftAnchor).isActive     = true
            self.base.rightAnchor.constraint(equalTo: superview.rightAnchor).isActive   = true
        }
    }
}
