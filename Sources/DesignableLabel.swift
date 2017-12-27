//
//  DesignableLabel.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import UIKit

@IBDesignable
public class DesignableLabel: UILabel {
    
    public override var text: String? {
        didSet { self.heightMultiple = self.attributedHeightMultiple }
    }
    
    private var attributedHeightMultiple: CGFloat = 0
    
    var textInsets = UIEdgeInsets.zero {
        didSet { self.invalidateIntrinsicContentSize() }
    }
    
    public override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        let textInsets     = self.textInsets
        let insetRect      = UIEdgeInsetsInsetRect(bounds, self.textInsets)
        let textRect       = super.textRect(forBounds: insetRect, limitedToNumberOfLines: numberOfLines)
        let invertedInsets = UIEdgeInsets(top: -textInsets.top, left: -textInsets.left, bottom: -textInsets.bottom, right: -textInsets.right)
        return UIEdgeInsetsInsetRect(textRect, invertedInsets)
    }
    
    public override func drawText(in rect: CGRect) {
        super.drawText(in: UIEdgeInsetsInsetRect(rect, self.textInsets))
    }
}

public extension DesignableLabel {
    
    @IBInspectable
    public var leftTextInset: CGFloat {
        set { self.textInsets.left = newValue }
        get { return self.textInsets.left }
    }
    
    @IBInspectable
    public var rightTextInset: CGFloat {
        set { self.textInsets.right = newValue }
        get { return self.textInsets.right }
    }
    
    @IBInspectable
    public var topTextInset: CGFloat {
        set { self.textInsets.top = newValue }
        get { return self.textInsets.top }
    }
    
    @IBInspectable
    public var bottomTextInset: CGFloat {
        set { self.textInsets.bottom = newValue }
        get { return self.textInsets.bottom }
    }
    
    @IBInspectable
    public var heightMultiple: CGFloat {
        set {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineHeightMultiple = newValue
            self.attributedHeightMultiple     = paragraphStyle.lineHeightMultiple
            self.attributedText = NSAttributedString(string: self.text ?? "", attributes: [NSAttributedStringKey.paragraphStyle : paragraphStyle])
        }
        get { return self.attributedHeightMultiple }
    }
}
