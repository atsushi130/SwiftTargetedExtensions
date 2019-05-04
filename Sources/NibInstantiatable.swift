//
//  NibInstantiatable.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

public protocol NibInstantiatable: class {
    static var nibName: String { get }
    static var nibBundle: Bundle { get }
    static var nibOwner: Any? { get }
    static var nibOptions: [AnyHashable: Any]? { get }
    static var instantiateIndex: Int { get }
}

public extension NibInstantiatable where Self: NSObject {
    static var nibName: String { return Self.ex.className }
    static var nibBundle: Bundle { return Bundle(for: self) }
    static var nibOwner: Any? { return self }
    static var nibOptions: [AnyHashable: Any]? { return nil }
    static var instantiateIndex: Int { return 0 }
}

public extension NibInstantiatable where Self: UIView {
    static func instantiate() -> Self {
        let nib = UINib(nibName: Self.nibName, bundle: Self.nibBundle)
        return nib.instantiate(withOwner: Self.nibOwner, options: Self.nibOptions as? [UINib.OptionsKey : Any])[Self.instantiateIndex] as! Self
    }
}
