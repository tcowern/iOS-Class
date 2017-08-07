//
//  ItemCell.swift
//  DreamLister
//
//  Created by Thomas Cowern New on 8/6/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    
    @IBOutlet weak var title: UILabel!

    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var details: UILabel!
    
    func configureCell(item: Item) {
        
        title.text = item.title
        price.text = "$\(item.price)"
        details.text = item.details
    }

}

