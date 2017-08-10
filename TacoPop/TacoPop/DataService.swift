//
//  DataService.swift
//  TacoPop
//
//  Created by Thomas Cowern New on 8/10/17.
//  Copyright © 2017 vetDevHouse. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class {
    func deliciousTacoDataLoaded()
}

class DataService {
    static let instance = DataService()
    
    weak var delegate: DataServiceDelegate?
    
    var tacoArray: Array<Taco> = []
    
    func loadDelicousTacoData() {
        
        func loadDeliciousTacoData() {
            // Chicken Tacos
            tacoArray.append(Taco(id: 1, productName: "Loaded Flour Chicken Taco", shellId: 1, proteinId: 2, condimentId: 1))
            tacoArray.append(Taco(id: 2, productName: "Loaded Corn Chicken Taco", shellId: 2, proteinId: 2, condimentId: 1))
            tacoArray.append(Taco(id: 3, productName: "Plain Flour Chicken Taco", shellId: 1, proteinId: 2, condimentId: 2))
            tacoArray.append(Taco(id: 4, productName: "Plain Corn Chicken Taco", shellId: 2, proteinId: 2, condimentId: 2))
            
            // Beef Tacos
            tacoArray.append(Taco(id: 5, productName: "Loaded Flour Beef Taco", shellId: 1, proteinId: 1, condimentId: 1))
            tacoArray.append(Taco(id: 6, productName: "Loaded Corn Beef Taco", shellId: 2, proteinId: 1, condimentId: 1))
            tacoArray.append(Taco(id: 7, productName: "Plain Flour Beef Taco", shellId: 1, proteinId: 1, condimentId: 2))
            tacoArray.append(Taco(id: 8, productName: "Plain Corn Beef Taco", shellId: 2, proteinId: 1, condimentId: 2))
            
            // Brisket Tacos
            tacoArray.append(Taco(id: 9, productName: "Loaded Flour Brisket Taco", shellId: 1, proteinId: 3, condimentId: 1))
            tacoArray.append(Taco(id: 10, productName: "Loaded Corn Brisket Taco", shellId: 2, proteinId: 3, condimentId: 1))
            tacoArray.append(Taco(id: 11, productName: "Plain Flour Brisket Taco", shellId: 1, proteinId: 3, condimentId: 2))
            tacoArray.append(Taco(id: 12, productName: "Plain Corn Brisket Taco", shellId: 2, proteinId: 3, condimentId: 2))
            
            // Fish Tacos
            tacoArray.append(Taco(id: 13, productName: "Loaded Flour Fish Taco", shellId: 1, proteinId: 4, condimentId: 1))
            tacoArray.append(Taco(id: 14, productName: "Loaded Corn Fish Taco", shellId: 2, proteinId: 4, condimentId: 1))
            tacoArray.append(Taco(id: 15, productName: "Plain Flour Fish Taco", shellId: 1, proteinId: 4, condimentId: 2))
            tacoArray.append(Taco(id: 16, productName: "Plain Corn Fish Taco", shellId: 2, proteinId: 4, condimentId: 2))
            
            delegate?.deliciousTacoDataLoaded()
        }
    }
}
