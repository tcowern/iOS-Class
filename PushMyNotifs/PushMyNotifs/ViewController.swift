//
//  ViewController.swift
//  PushMyNotifs
//
//  Created by Thomas Cowern New on 8/11/17.
//  Copyright © 2017 vetDevHouse. All rights reserved.
//

import UIKit
import Firebase
import FirebaseInstanceID
import FirebaseMessaging

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Messaging.messaging().subscribe(toTopic: "/topics/news")
        
    }

    

}

