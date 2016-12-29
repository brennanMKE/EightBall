//
//  DesignableButton.swift
//  EightBall
//
//  Created by Brennan Stehling on 12/28/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

import UIKit

@IBDesignable class DesignableButton: UIButton {

    @IBInspectable var roundedCornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = roundedCornerRadius
        }
    }

    @IBInspectable var verticalPadding: CGFloat = 0 {
        didSet {
            contentEdgeInsets = UIEdgeInsetsMake(verticalPadding, horizontalPadding, verticalPadding, horizontalPadding)
        }
    }

    @IBInspectable var horizontalPadding: CGFloat = 0 {
        didSet {
            contentEdgeInsets = UIEdgeInsetsMake(verticalPadding, horizontalPadding, verticalPadding, horizontalPadding)
        }
    }
    
}
