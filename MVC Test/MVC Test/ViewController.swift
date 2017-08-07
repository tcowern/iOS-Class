//
//  ViewController.swift
//  MVC Test
//
//  Created by Thomas Cowern New on 7/29/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullName: UILabel!
    
    @IBOutlet weak var renameField: UITextField!
    
    let person = Person(first: "John", last: "Hancock")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        fullName.text = person.fullName
    }
    
    @IBAction func renamePressed(_ sender: Any) {
        
        if let txt = renameField.text {
            person.firstName = txt
            fullName.text = person.fullName
            renameField.text = ""
        }
        
    }


}

