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
        let insetRect      = bounds.inset(by: self.textInsets)
        let textRect       = super.textRect(forBounds: insetRect, limitedToNumberOfLines: numberOfLines)
        let invertedInsets = UIEdgeInsets(top: -textInsets.top, left: -textInsets.left, bottom: -textInsets.bottom, right: -textInsets.right)
        return textRect.inset(by: invertedInsets)
    }
    
    public override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: self.textInsets))
    }
}

public extension DesignableLabel {
    
    @IBInspectable
    var leftTextInset: CGFloat {
        set { self.textInsets.left = newValue }
        get { return self.textInsets.left }
    }
    
    @IBInspectable
    var rightTextInset: CGFloat {
        set { self.textInsets.right = newValue }
        get { return self.textInsets.right }
    }
    
    @IBInspectable
    var topTextInset: CGFloat {
        set { self.textInsets.top = newValue }
        get { return self.textInsets.top }
    }
    
    @IBInspectable
    var bottomTextInset: CGFloat {
        set { self.textInsets.bottom = newValue }
        get { return self.textInsets.bottom }
    }
    
    @IBInspectable
    var heightMultiple: CGFloat {
        set {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineHeightMultiple = newValue
            self.attributedHeightMultiple     = paragraphStyle.lineHeightMultiple
            self.attributedText = NSAttributedString(string: self.text ?? "", attributes: [NSAttributedString.Key.paragraphStyle : paragraphStyle])
        }
        get { return self.attributedHeightMultiple }
    }
}
