//
//  ConditionDayStub.swift
//  weather weatherTests
//
//  Created by Vladislav Sharaev on 5/14/19.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import Foundation

struct ConditionDayStub {
    var json: String{
        
        return """
        {
        "text": "Moderate rain at times",
        "icon": "//cdn.apixu.com/weather/64x64/day/299.png",
        "code": 1186
        }
        """
    }
    
    var invalidJSON: String {
        
        return """
        {
        "text": "Sunny",
        "code": 1000
        }
        """
    }
}
