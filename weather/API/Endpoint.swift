//
//  Endpoint.swift
//  weather weather
//
//  Created by Vladislav Sharaev on 4/6/19.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import Foundation

protocol Endpoint {
    
    var url : String { get }
}

extension Endpoint {
    
    var request: URLRequest {
        return URLRequest(url: URL(string: url)!)
    }
}

enum WeatherEndpoint: Endpoint {
    
    case tenDayForecat(city: String, numberOfDays: String)
    case currentWeather(city: String)
    	
    var url: String {
        switch self {
        case .tenDayForecat(let city, let numberOfDays):
            let encoded = city.addingPercentEncoding(withAllowedCharacters: .alphanumerics)!
            return "http://api.apixu.com/v1/forecast.json?key=94881a263dbd47b8a04112311190104&q=\(encoded)&days=\(numberOfDays)"
        case .currentWeather(let city):
            let encoded = city.addingPercentEncoding(withAllowedCharacters: .alphanumerics)!
            return "http://api.apixu.com/v1/current.json?key=94881a263dbd47b8a04112311190104&q=\(encoded)"
        }
    }
}
