//
//  NibDesignable.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/01/03.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import UIKit

public protocol NibDesignable: class {}

public extension NibDesignable where Self: UIView {
    
    private func instantiate() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib    = UINib(nibName: self.ex.className, bundle: bundle)
        return nib.instantiate(withOwner: self).first as? UIView ?? UIView()
    }
    
    public func configureNib() {
        let view = self.instantiate()
        self.insertSubview(view, at: 0)
        view.ex.fillSuperview()
    }
}
