//
//  Constants.swift
//  WeatherApp
//
//  Created by Thomas Cowern New on 8/2/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"

let LATITUDE = "lat="

let LONGITUDE = "&lon="

let APP_ID = "&appid="

let API_KEY = "f540818365966c9172921b79f168352f"

typealias DownloadComplete = () -> ()

//let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)41\(LONGITUDE)72\(APP_ID)\(API_KEY)"

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=f540818365966c9172921b79f168352f"

let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=f540818365966c9172921b79f168352f"





