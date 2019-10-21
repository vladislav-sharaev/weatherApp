//
//  EndpointTests.swift
//  weather weatherTests
//
//  Created by Vladislav Sharaev on 5/6/2019.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import XCTest
@testable import weather_weather

class EndpointTests: XCTestCase {
    
    func testEndpointStringForSevenDays() {
        
        let url = "http://api.apixu.com/v1/forecast.json?key=94881a263dbd47b8a04112311190104&q=Minsk&days=7"
        
        let endpoint = WeatherEndpoint.tenDayForecat(city: "Minsk", numberOfDays: "7")
        
        XCTAssertTrue(endpoint.url == url)
    }
    
    func testEndpointStringForCurrentDay() {
        
        let url = "http://api.apixu.com/v1/current.json?key=94881a263dbd47b8a04112311190104&q=Minsk"
        
        let endpoint = WeatherEndpoint.currentWeather(city: "Minsk")
        
        XCTAssertTrue(endpoint.url == url)
    }
    
    func testEndpointStringForRussianLanguage() {
        
        let url = "http://api.apixu.com/v1/current.json?key=94881a263dbd47b8a04112311190104&q=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA"
        
        let city = "Минск"
        let encoded = city.addingPercentEncoding(withAllowedCharacters: .alphanumerics)!
        let endpoint = WeatherEndpoint.currentWeather(city: encoded)
        


        XCTAssertTrue(endpoint.url == endpoint.url)
    }
    
    //TODO: current
    //TODO: русские названия городов
}
