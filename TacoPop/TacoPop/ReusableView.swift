//
//  ReusableView.swift
//  TacoPop
//
//  Created by Thomas Cowern New on 8/11/17.
//  Copyright © 2017 vetDevHouse. All rights reserved.
//

//import Foundation
import  UIKit

protocol ReusableView: class {
    
}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        
        return String(describing: self)
        
    }
    
}
