//
//  UICollectionView+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation
import UIKit

public extension Extension where Base: UICollectionView {
    
    // MARK: - RegisterNib
    public func register<T: UICollectionViewCell>(cellType: T.Type, bundle: Bundle = Bundle(for: T.self)) {
        let className = cellType.ex.className
        let nib       = UINib(nibName: className, bundle: bundle)
        self.base.register(nib, forCellWithReuseIdentifier: className)
    }
    
    public func register<T: UICollectionViewCell>(cellTypes: [T.Type], bundle: Bundle = Bundle(for: T.self)) {
        cellTypes.forEach { register(cellType: $0, bundle: bundle) }
    }
    
    // MARK: - Register Header View
    public func register<T: UICollectionReusableView>(reusableViewType: T.Type, of kind: String = UICollectionElementKindSectionHeader) {
        let className = reusableViewType.ex.className
        let nib       = UINib(nibName: className, bundle: nil)
        self.base.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: className)
    }
    
    public func register<T: UICollectionReusableView>(reusableViewTypes: [T.Type], kind: String = UICollectionElementKindSectionHeader) {
        reusableViewTypes.forEach { register(reusableViewType: $0, of: kind) }
    }
    
    // MARK: - Register Footer View
    public func register<T: UICollectionReusableView>(reusableViewFooterType: T.Type, of kind: String = UICollectionElementKindSectionFooter) {
        let className = reusableViewFooterType.ex.className
        let nib       = UINib(nibName: className, bundle: nil)
        self.base.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: className)
    }
    
    public func register<T: UICollectionReusableView>(reusableViewFooterTypes: [T.Type], kind: String = UICollectionElementKindSectionFooter) {
        reusableViewFooterTypes.forEach {
            self.register(reusableViewFooterType: $0, of: kind)
        }
    }
    
    // MARK: - DequeueReusableCell
    public func dequeueReusableCell<T: UICollectionViewCell>(with type: T.Type, for indexPath: IndexPath) -> T {
        return self.base.dequeueReusableCell(withReuseIdentifier: type.ex.className, for: indexPath) as! T
    }
    
    // MARK: - DequeueReusableHeaderView
    public func dequeueReusableView<T: UICollectionReusableView>(with type: T.Type, for indexPath: IndexPath, of kind: String = UICollectionElementKindSectionHeader) -> T {
        return self.base.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: type.ex.className, for: indexPath) as! T
    }
    
    // MARK: - DequeueReusableFooterView
    public func dequeueReusableFooterView<T: UICollectionReusableView>(with type: T.Type, for indexPath: IndexPath, of kind: String = UICollectionElementKindSectionFooter) -> T {
        return self.base.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: type.ex.className, for: indexPath) as! T
    }
}

public extension UICollectionViewDelegate {
    public func numberOfSections(collectionView: UICollectionView) -> Int {
        return 1
    }
}
