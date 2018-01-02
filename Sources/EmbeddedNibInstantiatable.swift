//
//  EmbeddedNibInstantiatable.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

public protocol EmbeddedNibInstantiatable {
    associatedtype Embedded: NibInstantiatable
}

public extension EmbeddedNibInstantiatable where Self: UIView, Embedded: UIView {
    public var embedded: Embedded { return subviews[0] as! Embedded }
    
    public func configureEmbededView() {
        let view = Embedded.instantiate()
        insertSubview(view, at: 0)
        view.ex.fillSuperview()
    }
}

