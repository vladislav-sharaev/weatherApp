//
//  CurrentWeatherStub.swift
//  weather weatherTests
//
//  Created by Vladislav Sharaev on 5/6/2019.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import Foundation

struct CurrentWeatherStub {
    
    var json: String {
        return """
        {
        "location": {
        "name": "Minsk",
        "region": "Minsk",
        "country": "Belarus",
        "lat": 53.9,
        "lon": 27.57,
        "tz_id": "Europe/Minsk",
        "localtime_epoch": 1557160118,
        "localtime": "2019-05-06 19:28"
        },
        "current": {
        "last_updated_epoch": 1557159311,
        "last_updated": "2019-05-06 19:15",
        "temp_c": 7.0,
        "temp_f": 44.6,
        "is_day": 1,
        "condition": {
        "text": "Mist",
        "icon": "//cdn.apixu.com/weather/64x64/day/143.png",
        "code": 1030
        },
        "wind_mph": 9.4,
        "wind_kph": 15.1,
        "wind_degree": 360,
        "wind_dir": "N",
        "pressure_mb": 1007.0,
        "pressure_in": 30.2,
        "precip_mm": 2.7,
        "precip_in": 0.11,
        "humidity": 100,
        "cloud": 100,
        "feelslike_c": 4.2,
        "feelslike_f": 39.6,
        "vis_km": 5.0,
        "vis_miles": 3.0,
        "uv": 2.0,
        "gust_mph": 16.3,
        "gust_kph": 26.3
        }
        }
        """
    }
    
    var invalidJSON: String {
        return """
        {
        "location": {
        "country": "Belarus",
        "lat": 53.9,
        "lon": 27.57,
        "tz_id": "Europe/Minsk",
        "localtime_epoch": 1557160118,
        "localtime": "2019-05-06 19:28"
        },
        "current": {
        "last_updated_epoch": 1557159311,
        "last_updated": "2019-05-06 19:15",
        "temp_c": 7.0,
        "temp_f": 44.6,
        "is_day": 1,
        "condition": {
        "text": "Mist",
        "icon": "//cdn.apixu.com/weather/64x64/day/143.png",
        "code": 1030
        },
        "wind_mph": 9.4,
        "wind_kph": 15.1,
        "wind_degree": 360,
        "wind_dir": "N",
        "pressure_mb": 1007.0,
        "pressure_in": 30.2,
        "precip_mm": 2.7,
        "precip_in": 0.11,
        "humidity": 100,
        "cloud": 100,
        "feelslike_c": 4.2,
        "feelslike_f": 39.6,
        "vis_km": 5.0,
        "vis_miles": 3.0,
        "uv": 2.0,
        "gust_mph": 16.3,
        "gust_kph": 26.3
        }
        }
        """
    }
}
