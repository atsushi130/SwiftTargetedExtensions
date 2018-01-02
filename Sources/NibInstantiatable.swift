//
//  NibInstantiatable.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

public protocol NibInstantiatable {
    static var nibName: String { get }
    static var nibBundle: Bundle { get }
    static var nibOwner: Any? { get }
    static var nibOptions: [AnyHashable: Any]? { get }
    static var instantiateIndex: Int { get }
}

public extension NibInstantiatable where Self: NSObject {
    public static var nibName: String { return String(describing: self) }
    public static var nibBundle: Bundle { return Bundle(for: self) }
    public static var nibOwner: Any? { return self }
    public static var nibOptions: [AnyHashable: Any]? { return nil }
    public static var instantiateIndex: Int { return 0 }
}

public extension NibInstantiatable where Self: UIView {
    public static func instantiate() -> Self {
        let nib = UINib(nibName: Self.nibName, bundle: Self.nibBundle)
        return nib.instantiate(withOwner: Self.nibOwner, options: Self.nibOptions)[Self.instantiateIndex] as! Self
    }
}
