//
//  CircleButton.swift
//  Scribe
//
//  Created by Thomas Cowern New on 8/11/17.
//  Copyright © 2017 vetDevHouse. All rights reserved.
//

import UIKit

@IBDesignable

class CircleButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 30.0 {
        
        didSet {
        
            setupView()
            
        }
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    func setupView() {
        
        layer.cornerRadius = cornerRadius
        
    }
    
}
