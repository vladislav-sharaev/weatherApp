//
//  Weather.swift
//  weather weather
//
//  Created by Vladislav Sharaev on 4/6/19.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import Foundation

class Weather: Codable {
    let forecast: Forecast?
    let location: Location
    let current: Current
    
    private enum CodingKeys: String, CodingKey{
        case forecast
        case location
        case current
    }
}

struct Location : Codable{
    let name : String
    let country : String
    let localTime : String
    
    private enum CodingKeys: String, CodingKey{
        case name = "name"
        case country = "country"
        case localTime = "localtime"
    }
}

struct Current : Codable{
    let condition : Condition
    let tempC : Float
    let isDay : Int
    
    private enum CodingKeys: String, CodingKey {
        case tempC = "temp_c"
        case isDay = "is_day"
        case condition = "condition"
    }
}

struct Condition : Codable{
    let iconUrl: URL?
    
    private enum CodingKeys : String, CodingKey{
        case iconUrl = "icon"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        var urlString = try container.decode(String.self, forKey: .iconUrl)
        urlString = "http:" + urlString
        iconUrl = URL(string: urlString)
    }
}

struct Forecast: Codable {
    let forecastDays: [ForecastDay]
    
    private enum CodingKeys: String, CodingKey{
        case forecastDays = "forecastday"
    }
}

struct ForecastDay: Codable {
    let date: String
    let day : Day
    
    private enum CodingKeys: String, CodingKey {
        case date = "date"
        case day = "day"
    }
}

struct Day : Codable {
    let condition : ConditionDay
    let maxTempC : Float
    let minTempC : Float
    
    private enum CodingKeys: String, CodingKey{
        case condition = "condition"
        case maxTempC = "maxtemp_c"
        case minTempC = "mintemp_c"
    }
}

struct ConditionDay : Codable{
    let text : String
    let iconUrl : URL?
    
    private enum CodingKeys : String, CodingKey{
        case text = "text"
        case iconUrl = "icon"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        text = try container.decode(String.self, forKey: .text)
        var urlString = try container.decode(String.self, forKey: .iconUrl)
        urlString = "http:" + urlString
        iconUrl = URL(string: urlString)
    }
}
