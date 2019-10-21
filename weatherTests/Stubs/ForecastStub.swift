//
//  ForecastStub.swift
//  weather weatherTests
//
//  Created by Vladislav Sharaev on 5/14/19.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import Foundation

struct ForecastStub {
    var json: String{
        
        return """
        {
        "forecastday": [
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
        },
        {
        "date": "2019-05-15",
        "date_epoch": 1557878400,
        "day": {
        "maxtemp_c": 18.8,
        "maxtemp_f": 65.8,
        "mintemp_c": 10.2,
        "mintemp_f": 50.4,
        "avgtemp_c": 14.2,
        "avgtemp_f": 57.5,
        "maxwind_mph": 13.0,
        "maxwind_kph": 20.9,
        "totalprecip_mm": 7.3,
        "totalprecip_in": 0.29,
        "avgvis_km": 18.2,
        "avgvis_miles": 11.0,
        "avghumidity": 86.0,
        "condition": {
        "text": "Light rain shower",
        "icon": "//cdn.apixu.com/weather/64x64/day/353.png",
        "code": 1240
        },
        "uv": 5.6
        },
        "astro": {
        "sunrise": "05:08 AM",
        "sunset": "09:05 PM",
        "moonrise": "04:25 PM",
        "moonset": "04:17 AM"
        }
        },
        {
        "date": "2019-05-16",
        "date_epoch": 1557964800,
        "day": {
        "maxtemp_c": 15.3,
        "maxtemp_f": 59.5,
        "mintemp_c": 11.5,
        "mintemp_f": 52.7,
        "avgtemp_c": 13.7,
        "avgtemp_f": 56.6,
        "maxwind_mph": 15.4,
        "maxwind_kph": 24.8,
        "totalprecip_mm": 4.8,
        "totalprecip_in": 0.19,
        "avgvis_km": 19.0,
        "avgvis_miles": 11.0,
        "avghumidity": 81.0,
        "condition": {
        "text": "Moderate or heavy rain shower",
        "icon": "//cdn.apixu.com/weather/64x64/day/356.png",
        "code": 1243
        },
        "uv": 4.4
        },
        "astro": {
        "sunrise": "05:07 AM",
        "sunset": "09:07 PM",
        "moonrise": "05:48 PM",
        "moonset": "04:36 AM"
        }
        },
        {
        "date": "2019-05-17",
        "date_epoch": 1558051200,
        "day": {
        "maxtemp_c": 19.2,
        "maxtemp_f": 66.6,
        "mintemp_c": 11.0,
        "mintemp_f": 51.8,
        "avgtemp_c": 14.7,
        "avgtemp_f": 58.5,
        "maxwind_mph": 17.9,
        "maxwind_kph": 28.8,
        "totalprecip_mm": 0.2,
        "totalprecip_in": 0.01,
        "avgvis_km": 18.4,
        "avgvis_miles": 11.0,
        "avghumidity": 70.0,
        "condition": {
        "text": "Patchy rain possible",
        "icon": "//cdn.apixu.com/weather/64x64/day/176.png",
        "code": 1063
        },
        "uv": 4.9
        },
        "astro": {
        "sunrise": "05:05 AM",
        "sunset": "09:09 PM",
        "moonrise": "07:10 PM",
        "moonset": "04:57 AM"
        }
        },
        {
        "date": "2019-05-18",
        "date_epoch": 1558137600,
        "day": {
        "maxtemp_c": 19.8,
        "maxtemp_f": 67.6,
        "mintemp_c": 10.0,
        "mintemp_f": 50.0,
        "avgtemp_c": 14.8,
        "avgtemp_f": 58.6,
        "maxwind_mph": 12.3,
        "maxwind_kph": 19.8,
        "totalprecip_mm": 0.0,
        "totalprecip_in": 0.0,
        "avgvis_km": 20.0,
        "avgvis_miles": 12.0,
        "avghumidity": 71.0,
        "condition": {
        "text": "Partly cloudy",
        "icon": "//cdn.apixu.com/weather/64x64/day/116.png",
        "code": 1003
        },
        "uv": 6.3
        },
        "astro": {
        "sunrise": "05:03 AM",
        "sunset": "09:10 PM",
        "moonrise": "08:30 PM",
        "moonset": "05:19 AM"
        }
        },
        {
        "date": "2019-05-19",
        "date_epoch": 1558224000,
        "day": {
        "maxtemp_c": 20.7,
        "maxtemp_f": 69.3,
        "mintemp_c": 10.1,
        "mintemp_f": 50.2,
        "avgtemp_c": 15.5,
        "avgtemp_f": 59.8,
        "maxwind_mph": 10.7,
        "maxwind_kph": 17.3,
        "totalprecip_mm": 0.0,
        "totalprecip_in": 0.0,
        "avgvis_km": 20.0,
        "avgvis_miles": 12.0,
        "avghumidity": 73.0,
        "condition": {
        "text": "Partly cloudy",
        "icon": "//cdn.apixu.com/weather/64x64/day/116.png",
        "code": 1003
        },
        "uv": 5.0
        },
        "astro": {
        "sunrise": "05:02 AM",
        "sunset": "09:12 PM",
        "moonrise": "09:48 PM",
        "moonset": "05:44 AM"
        }
        },
        {
        "date": "2019-05-20",
        "date_epoch": 1558310400,
        "day": {
        "maxtemp_c": 22.6,
        "maxtemp_f": 72.7,
        "mintemp_c": 11.1,
        "mintemp_f": 52.0,
        "avgtemp_c": 17.3,
        "avgtemp_f": 63.1,
        "maxwind_mph": 14.5,
        "maxwind_kph": 23.4,
        "totalprecip_mm": 1.8,
        "totalprecip_in": 0.07,
        "avgvis_km": 19.8,
        "avgvis_miles": 12.0,
        "avghumidity": 78.0,
        "condition": {
        "text": "Moderate or heavy rain shower",
        "icon": "//cdn.apixu.com/weather/64x64/day/356.png",
        "code": 1243
        },
        "uv": 4.0
        },
        "astro": {
        "sunrise": "05:00 AM",
        "sunset": "09:13 PM",
        "moonrise": "10:59 PM",
        "moonset": "06:15 AM"
        }
        }
        ]
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
