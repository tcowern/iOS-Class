//
//  Item+CoreDataProperties.swift
//  DreamLister
//
//  Created by Thomas Cowern New on 8/6/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var title: String?
    @NSManaged public var created: NSDate?
    @NSManaged public var details: String?
    @NSManaged public var price: Double
    @NSManaged public var toStore: Store?
    @NSManaged public var toImage: Image?
    @NSManaged public var toItemType: ItemType?

}
