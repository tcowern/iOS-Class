//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Thomas Cowern New on 8/6/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {

    public override func awakeFromInsert() {
        
        super.awakeFromInsert()
        
        self.created = NSDate()
    }
    
}
