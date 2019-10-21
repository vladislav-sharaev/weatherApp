//
//  ModelDecodesTests.swift
//  weather weatherTests
//
//  Created by Vladislav Sharaev on 5/6/2019.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import XCTest
@testable import weather_weather

class ModelDecodesTests: XCTestCase {
    
    func testDecodeWeather() {
        let currentWeatherStub = CurrentWeatherStub()
        let json = currentWeatherStub.json
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var weather: Weather?
        
        do {
            weather = try JSONDecoder().decode(Weather.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNotNil(weather)
        XCTAssertNil(error)
    }    
    func testDecodeWeatherInvalid() {
        
        let currentWeatherStub = CurrentWeatherStub()
        let json = currentWeatherStub.invalidJSON
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var weather: Weather?
        
        do {
            weather = try JSONDecoder().decode(Weather.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNil(weather)
        XCTAssertNotNil(error)
    }
    
    func testDecodeLocation() {
        let locationStub = LocationStub()
        let json = locationStub.json
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var location: Location?
        
        do {
            location = try JSONDecoder().decode(Location.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNotNil(location)
        XCTAssertNil(error)
    }
    
    func testDecodeLocationInvalid() {
        
        let locationStub = LocationStub()
        let json = locationStub.invalidJSON
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var location: Location?
        
        do {
            location = try JSONDecoder().decode(Location.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNil(location)
        XCTAssertNotNil(error)
    }
    
    func testDecodeCurrent() {
        
        let currentStub = CurrentStub()
        let json = currentStub.json
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var current: Current?
        
        do {
            current = try JSONDecoder().decode(Current.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNotNil(current)
        XCTAssertNil(error)
    }
    
    func testDecodeCurrentInvalid() {
        
        let currentStub = CurrentStub()
        let json = currentStub.invalidJSON
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var current: Current?
        
        do {
            current = try JSONDecoder().decode(Current.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNil(current)
        XCTAssertNotNil(error)
    }
    
    func testDecodeCondition() {
        
        let conditionStub = ConditionStub()
        let json = conditionStub.json
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var condition: Condition?
        
        do {
            condition = try JSONDecoder().decode(Condition.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNotNil(condition)
        XCTAssertNil(error)
    }
    
    func testDecodeConditionInvalid() {
        
        let conditionStub = ConditionStub()
        let json = conditionStub.invalidJSON
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var condition: Condition?
        
        do {
            condition = try JSONDecoder().decode(Condition.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNil(condition)
        XCTAssertNotNil(error)
    }
    
    func testDecodeForecast() {
        
        let forecastStub = ForecastStub()
        let json = forecastStub.json
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var forecast: Forecast?
        
        do {
            forecast = try JSONDecoder().decode(Forecast.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNotNil(forecast)
        XCTAssertNil(error)
    }
    
    func testDecodeForecastInvalid() {
        
        let forecastStub = ForecastStub()
        let json = forecastStub.invalidJSON
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var forecast: Forecast?
        
        do {
            forecast = try JSONDecoder().decode(Forecast.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNil(forecast)
        XCTAssertNotNil(error)
    }
    
    func testDecodeDay() {
        
        let dayStub = DayStub()
        let json = dayStub.json
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var day: Day?
        
        do {
            day = try JSONDecoder().decode(Day.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNotNil(day)
        XCTAssertNil(error)
    }
    
    func testDecodeDayInvalid() {
        
        let dayStub = DayStub()
        let json = dayStub.invalidJSON
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var day: Day?
        
        do {
            day = try JSONDecoder().decode(Day.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNil(day)
        XCTAssertNotNil(error)
    }
    
    func testDecodeForecastDay() {
        
        let forecastDayStub = ForecastDayStub()
        let json = forecastDayStub.json
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var foreacastDay: ForecastDay?
        
        do {
            foreacastDay = try JSONDecoder().decode(ForecastDay.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNotNil(foreacastDay)
        XCTAssertNil(error)
    }
    
    func testDecodeForecastDayInvalid() {
        
        let forecastDayStub = ForecastDayStub()
        let json = forecastDayStub.invalidJSON
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var foreacastDay: ForecastDay?
        
        do {
            foreacastDay = try JSONDecoder().decode(ForecastDay.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNil(foreacastDay)
        XCTAssertNotNil(error)
    }
    
    func testDecodeConditiontDay() {
        
        let conditionDayStub = ConditionDayStub()
        let json = conditionDayStub.json
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var conditionDay: ConditionDay?
        
        do {
            conditionDay = try JSONDecoder().decode(ConditionDay.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNotNil(conditionDay)
        XCTAssertNil(error)
    }
    
    func testDecodeConditionDayInvalid() {
        
        let conditionDayStub = ConditionDayStub()
        let json = conditionDayStub.invalidJSON
        let data = json.data(using: .utf8)!
        
        var error: Error?
        var conditionDay: ConditionDay?
        
        do {
            conditionDay = try JSONDecoder().decode(ConditionDay.self, from: data)
        } catch let decodeError {
            error = decodeError
        }
        
        XCTAssertNil(conditionDay)
        XCTAssertNotNil(error)
    }
}
