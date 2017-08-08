//: Playground - noun: a place where people can play

import UIKit

//print("Wow this is slow!")

func intAdder(number: Int) -> Int {
    
    return number + 1
    
}

intAdder(number: 67)

func genericAdder<T: Strideable>(number: T) -> T {
    
    return number + 1
    
}


genericAdder(number: 12)

genericAdder(number: 12.4)

func intMultiplier(lhs: Int, rhs: Int) -> Int {
    
    return lhs * rhs
    
}

intMultiplier(lhs: 2, rhs: 4)

protocol Numeric {
    
    func *(lhs: Self, rhs: Self) -> Self
    
}

extension Double: Numeric {}
extension Float: Numeric {}
extension Int: Numeric {}

func genericMultiplier<T: Numeric>(lhs: T, rhs: T) -> T {
    
    return lhs * rhs
    
}

genericMultiplier(lhs: 2.3, rhs: 3)


