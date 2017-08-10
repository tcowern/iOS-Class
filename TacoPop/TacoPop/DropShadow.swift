//
//  DropShadow.swift
//  TacoPop
//
//  Created by Thomas Cowern New on 8/10/17.
//  Copyright © 2017 vetDevHouse. All rights reserved.
//

import UIKit

protocol DropShadow {

    
    
}

extension DropShadow where Self: UIView {
    
    func addDropShadow() {
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
        
    }
    
}
