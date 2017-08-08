//: Playground - noun: a place where people can play

import UIKit




extension Double {
    
    var dollarString: String  {
        
        return String(format: "$%.02f", self)
        
    }
    
}


var pct = 32.15 * 0.15

print(pct.dollarString)

