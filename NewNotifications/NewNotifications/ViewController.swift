////
////  ViewController.swift
////  NewNotifications
////
////  Created by Thomas Cowern New on 8/11/17.
////  Copyright © 2017 vetDevHouse. All rights reserved.
////
//
//import UIKit
//import UserNotifications
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        //Request Permision
//        
//        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {(granted, error) in
//        
//            if granted {
//                
//                print("Notification access granted")
//                
//            } else {
//                
//                print(error?.localizedDescription)
//            }
//        
//        })
//        
//    }
//
//    @IBAction func notifyMeButtonTapped(sender: UIButton) {
//        scheduleNotification(inSeconds: 5, completion: { success in
//            if success {
//                print("Successfully scheduled notification")
//            } else {
//                print("Error scheduling notification")
//            }
//        })
//    }
//    
//    
//    
////    @IBAction func notifyButtonTapped(sender: UIButton) {
////        
////        scheduleNotification(inSeconds: 5, completion: { success in
////        
////            if success {
////                
////                print("Successfully scheduled notification")
////                
////            } else {
////                
////                print("Error scheduling notification")
////                
////            }
////        
////        })
////        
////    }
//    
//    func scheduleNotification(inSeconds: TimeInterval, completion: @escaping () -> ()) {
//        
//        let notif = UNMutableNotificationContent()
//        
//        notif.title = "New Notification"
//        notif.subtitle = "These are great"
//        notif.body = "This is the notification body"
//        
//        let notifTrigger = UNTimeIntervalNotificationTrigger(timeInterval: inSeconds, repeats: false)
//        
//        let request = UNNotificationRequest(identifier: "My notification", content: notif, trigger: notifTrigger)
//        
//        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
//        
//            if error != nil {
//                
//                print(error)
//                
//                completion()
//                
//            } else {
//                
//                completion()
//                
//            }
//        
//        })
//    }
//    
//}

