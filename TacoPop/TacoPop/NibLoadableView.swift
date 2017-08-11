//
//  NIBLoadableView.swift
//  TacoPop
//
//  Created by Thomas Cowern New on 8/11/17.
//  Copyright © 2017 vetDevHouse. All rights reserved.
//

//import Foundation
import UIKit

protocol NibLoadableVeiw: class {}

extension NibLoadableVeiw where Self: UIView {
    
        static var nibName: String {
        
        return String(describing: self)
        
    }
    
}
