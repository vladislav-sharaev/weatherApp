//
//  WeatherApiClientTests.swift
//  weather weatherTests
//
//  Created by Vladislav Sharaev on 5/6/2019.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import XCTest
@testable import weather_weather

class WeatherApiClientTests: XCTestCase {
    
    func testGetCurrentWeather() {
        
        let exp = expectation(description: "testGetCurrentWeather")
        
        let endpoint = WeatherEndpoint.currentWeather(city: "Minsk")
        let apiClient = WeatherAPIClient()
        
        var error: Error?
        var weather: Weather?
    
        apiClient.weather(with: endpoint) { (result) in
            switch result {
            case .value(let loadedWeather):
                weather = loadedWeather
            case .error(let apiError):
                error = apiError
            }
            
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 10) { error in
            XCTAssertNotNil(weather)
            XCTAssertNil(error)
        }
    }
    
    func testGetSevenDaysWeather() {
        
        let exp = expectation(description: "testGetSevemDaysWeather")
        
        let endpoint = WeatherEndpoint.tenDayForecat(city: "Minsk", numberOfDays: "7")
        let apiClient = WeatherAPIClient()
        
        var error: Error?
        var weather: Weather?
        
        apiClient.weather(with: endpoint) { (result) in
            switch result {
            case .value(let loadedWeather):
                weather = loadedWeather
            case .error(let apiError):
                error = apiError
            }
            
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 10) { error in
            XCTAssertNotNil(weather)
            XCTAssertNil(error)
        }
    }
    // второй endpoint
}
