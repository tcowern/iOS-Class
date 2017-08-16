//
//  FancyField.swift
//  SocialApp
//
//  Created by Thomas Cowern New on 8/16/17.
//  Copyright © 2017 vetDevHouse. All rights reserved.
//

import UIKit

class FancyField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = UIColor(colorLiteralRed: Float(SHADOW_GRAY), green: Float(SHADOW_GRAY), blue: Float(SHADOW_GRAY), alpha: 0.6).cgColor
        
        layer.borderWidth = 1.0
        
        layer.cornerRadius = 2.0
        
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }

}
