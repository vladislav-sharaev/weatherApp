//
//  CurrentStub.swift
//  weather weatherTests
//
//  Created by Vladislav Sharaev on 5/8/19.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import Foundation

struct CurrentStub {
    var json: String{
        return """
        {
        "last_updated_epoch": 1557846015,
        "last_updated": "2019-05-14 18:00",
        "temp_c": 17.0,
        "temp_f": 62.6,
        "is_day": 1,
        "condition": {
        "text": "Sunny",
        "icon": "//cdn.apixu.com/weather/64x64/day/113.png",
        "code": 1000
        },
        "wind_mph": 13.6,
        "wind_kph": 22.0,
        "wind_degree": 340,
        "wind_dir": "NNW",
        "pressure_mb": 1021.0,
        "pressure_in": 30.6,
        "precip_mm": 0.0,
        "precip_in": 0.0,
        "humidity": 77,
        "cloud": 0,
        "feelslike_c": 17.0,
        "feelslike_f": 62.6,
        "vis_km": 10.0,
        "vis_miles": 6.0,
        "uv": 5.0,
        "gust_mph": 13.9,
        "gust_kph": 22.3
        }
        """
    }
    
    var invalidJSON: String {
        return """
        {
        "last_updated_epoch": 1557159311,
        "last_updated": "2019-05-06 19:15",
        "temp_c": 7.0,
        "temp_f": 44.6,
        "is_day": 1,
        "condition": {
        "text": "Mist",
        "icon": "//cdn.apixu.com/weather/64x64/day/143.png"
        }
        """
    }
}
