//
//  ForecastDayStub.swift
//  weather weatherTests
//
//  Created by Vladislav Sharaev on 5/14/19.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import Foundation

struct ForecastDayStub {
    var json: String{
        
        return """
        {
        "date": "2019-05-14",
        "date_epoch": 1557792000,
        "day": {
        "maxtemp_c": 17.4,
        "maxtemp_f": 63.3,
        "mintemp_c": 8.9,
        "mintemp_f": 48.0,
        "avgtemp_c": 13.2,
        "avgtemp_f": 55.8,
        "maxwind_mph": 11.6,
        "maxwind_kph": 18.7,
        "totalprecip_mm": 0.5,
        "totalprecip_in": 0.02,
        "avgvis_km": 17.7,
        "avgvis_miles": 10.0,
        "avghumidity": 86.0,
        "condition": {
        "text": "Moderate rain at times",
        "icon": "//cdn.apixu.com/weather/64x64/day/299.png",
        "code": 1186
        },
        "uv": 5.6
        },
        "astro": {
        "sunrise": "05:10 AM",
        "sunset": "09:04 PM",
        "moonrise": "03:03 PM",
        "moonset": "03:57 AM"
        }
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
