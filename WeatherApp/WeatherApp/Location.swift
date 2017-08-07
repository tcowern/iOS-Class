//
//  Location.swift
//  WeatherApp
//
//  Created by Thomas Cowern New on 8/3/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init () {}
    
    var latitude: Double!
    var longitude: Double!
}
