//
//  IsDayImageStateTests.swift
//  weather weatherTests
//
//  Created by Vladislav Sharaev on 5/6/2019.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import XCTest
@testable import weather_weather

class IsDayImageStateTests: XCTestCase {
    
    func testInitIsDayState() {
        
        let first = IsDayImageState.init(value: 0)
        let second = IsDayImageState.init(value: 1)
        let third = IsDayImageState.init(value: 25)
        
        XCTAssertTrue(first == .night)
        XCTAssertTrue(second == .day)
        XCTAssertTrue(third == .unknown)
    }
    
    func testIsDayReturnImage() {
        
        let first = IsDayImageState.init(value: 0).image
        let second = IsDayImageState.init(value: 1).image
        let third = IsDayImageState.init(value: 25).image
        
        XCTAssertNotNil(first)
        XCTAssertNotNil(second)
        XCTAssertNotNil(third)
        
        XCTAssertTrue(first == UIImage(named: "backGroundNight"))
        XCTAssertTrue(second == UIImage(named: "backgroundDay"))
        XCTAssertTrue(third == UIImage(named: "backGroundAllDays"))
    }
    
    func testIsDayReturnColorText() {
        
        let first = IsDayImageState.init(value: 0).textColor
        let second = IsDayImageState.init(value: 1).textColor
        let third = IsDayImageState.init(value: 25).textColor
        
        XCTAssertNotNil(first)
        XCTAssertNotNil(second)
        XCTAssertNotNil(third)
        
        XCTAssertTrue(first == UIColor.white)
        XCTAssertTrue(second == UIColor.black)
        XCTAssertTrue(third == UIColor.black)
    }
    
    func testIsDayReturnColorBackground() {
        
        let first = IsDayImageState.init(value: 0).backgroundColor
        let second = IsDayImageState.init(value: 1).backgroundColor
        let third = IsDayImageState.init(value: 25).backgroundColor
        
        XCTAssertNotNil(first)
        XCTAssertNotNil(second)
        XCTAssertNotNil(third)
        
        XCTAssertTrue(first == UIColor.darkGray)
        XCTAssertTrue(second == UIColor.cyan)
        XCTAssertTrue(third == UIColor.cyan)
    }
    
    //TODO: var textColor +
    //TODO: var backgroundColor +
}
