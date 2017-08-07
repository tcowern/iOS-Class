//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Thomas Cowern New on 8/2/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = "City Name Empty"
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today \(currentDate)"
        
        return _date    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = "Weather Type Empty"
        }
        return _weatherType
    }
    
    var currentTemp: Double {
        if self._currentTemp == nil {
            self._currentTemp = 0.0
        }
        return _currentTemp
    }
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        //Alamofire download
//        let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)
        
        print("Current URL:", CURRENT_WEATHER_URL)
        
        Alamofire.request(CURRENT_WEATHER_URL).responseJSON { response in
            let result = response.result
            
            print(response.result)
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                    print("Name:", self._cityName)
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                    
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                        print("Type:", self._weatherType)
                    }
                }
                
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    if let currentTemperature = main["temp"] as? Double {
                        
                        let kelvinToFarenheitPreDiv = currentTemperature * (9/5) - 459.67
                        
                        let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDiv/10))
                        
                        self._currentTemp = kelvinToFarenheit
                        print("Temp:", self._currentTemp)
                        
                    }
                }
            }
            completed()
        }
        
    }

}
