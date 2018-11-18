//
//  UITableView+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension Extension where Base: UITableView {
    public func register<T: UITableViewCell>(cellType: T.Type, bundle: Bundle = Bundle(for: T.self)) {
        let className = cellType.ex.className
        let nib       = UINib(nibName: className, bundle: bundle)
        self.base.register(nib, forCellReuseIdentifier: className)
    }
    
    public func register<T: UITableViewCell>(cellTypes: [T.Type], bundle: Bundle = Bundle(for: T.self)) {
        cellTypes.forEach { self.register(cellType: $0, bundle: bundle) }
    }
    
    public func dequeueReusableCell<T: UITableViewCell>(with type: T.Type, for indexPath: IndexPath) -> T {
        return self.base.dequeueReusableCell(withIdentifier: type.ex.className, for: indexPath) as! T
    }
}
