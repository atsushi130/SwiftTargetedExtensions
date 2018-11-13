//
//  UIAlertController+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/11/13.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import UIKit

public extension UIAlertController {
    public static func okAlertController(title: String = "", message: String = "") -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        return alertController
    }
}
