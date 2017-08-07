//
//  ItemType+CoreDataProperties.swift
//  DreamLister
//
//  Created by Thomas Cowern New on 8/6/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType")
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
