//
//  UICollectionView+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation
import UIKit

extension Extension where Base: UICollectionView {
    
    // MARK: - RegisterNib
    func register<T: UICollectionViewCell>(cellType: T.Type) {
        let className = cellType.ex.className
        let nib       = UINib(nibName: className, bundle: nil)
        self.base.register(nib, forCellWithReuseIdentifier: className)
    }
    
    func register<T: UICollectionViewCell>(cellTypes: [T.Type]) {
        cellTypes.forEach { register(cellType: $0) }
    }
    
    // MARK: - Register Header View
    func register<T: UICollectionReusableView>(reusableViewType: T.Type, of kind: String = UICollectionElementKindSectionHeader) {
        let className = reusableViewType.ex.className
        let nib       = UINib(nibName: className, bundle: nil)
        self.base.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: className)
    }
    
    func register<T: UICollectionReusableView>(reusableViewTypes: [T.Type], kind: String = UICollectionElementKindSectionHeader) {
        reusableViewTypes.forEach { register(reusableViewType: $0, of: kind) }
    }
    
    // MARK: - Register Footer View
    func register<T: UICollectionReusableView>(reusableViewFooterType: T.Type, of kind: String = UICollectionElementKindSectionFooter) {
        let className = reusableViewFooterType.ex.className
        let nib       = UINib(nibName: className, bundle: nil)
        self.base.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: className)
    }
    
    func register<T: UICollectionReusableView>(reusableViewFooterTypes: [T.Type], kind: String = UICollectionElementKindSectionFooter) {
        reusableViewFooterTypes.forEach {
            self.register(reusableViewFooterType: $0, of: kind)
        }
    }
    
    // MARK: - DequeueReusableCell
    func dequeueReusableCell<T: UICollectionViewCell>(with type: T.Type, for indexPath: IndexPath) -> T {
        return self.base.dequeueReusableCell(withReuseIdentifier: type.ex.className, for: indexPath) as! T
    }
    
    // MARK: - DequeueReusableHeaderView
    func dequeueReusableView<T: UICollectionReusableView>(with type: T.Type, for indexPath: IndexPath, of kind: String = UICollectionElementKindSectionHeader) -> T {
        return self.base.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: type.ex.className, for: indexPath) as! T
    }
    
    // MARK: - DequeueReusableFooterView
    func dequeueReusableFooterView<T: UICollectionReusableView>(with type: T.Type, for indexPath: IndexPath, of kind: String = UICollectionElementKindSectionFooter) -> T {
        return self.base.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: type.ex.className, for: indexPath) as! T
    }
}

extension UICollectionViewDataSource {
    func numberOfSections(collectionView: UICollectionView) -> Int {
        return 1
    }
}
