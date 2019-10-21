//
//  ConditionStub.swift
//  weather weatherTests
//
//  Created by Vladislav Sharaev on 5/14/19.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import Foundation

struct ConditionStub {
    var json: String{
        
        return """
        {
        "text": "Sunny",
        "icon": "//cdn.apixu.com/weather/64x64/day/113.png",
        "code": 1000
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
