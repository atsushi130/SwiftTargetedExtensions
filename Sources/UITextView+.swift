//
//  UITextView+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import UIKit

extension UITextView: UITextViewDelegate {
    
    public var placeholder: String? {
        get {
            guard let label = self.viewWithTag(100) as? UILabel, let placeholder = label.text else { return nil }
            return placeholder
        }
        set {
            if let label = self.viewWithTag(100) as! UILabel? {
                label.text = newValue
                label.sizeToFit()
            } else {
                self.addPlaceholder(newValue!)
            }
        }
    }
    
    private func addPlaceholder(_ placeholderText: String) {
        
        let placeholderLabel = DesignableLabel()
        placeholderLabel.bottomTextInset = 2
        placeholderLabel.text            = placeholderText
        placeholderLabel.sizeToFit()
        
        placeholderLabel.font      = self.font
        placeholderLabel.textColor = UIColor.lightGray
        placeholderLabel.tag       = 100
        placeholderLabel.isHidden  = self.text.count > 0
        
        self.addSubview(placeholderLabel)
        self.resizePlaceholder()
        self.delegate = self
    }
    
    private func resizePlaceholder() {
        if  let placeholderLabel = self.viewWithTag(100) as! UILabel? {
            let point = (x: self.textContainer.lineFragmentPadding, y: self.textContainerInset.top - 2)
            let size  = (width: self.frame.width - (point.x * 2), height: placeholderLabel.frame.height)
            
            placeholderLabel.frame = CGRect(x: point.x, y: point.y, width: size.width, height: size.height)
        }
    }
}

