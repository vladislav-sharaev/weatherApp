//
//  LocationStub.swift
//  weather weatherTests
//
//  Created by Vladislav Sharaev on 5/8/19.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import Foundation

struct LocationStub {
    
    var json: String{
        return """
        {
        "name": "Minsk",
        "region": "Minsk",
        "country": "Belarus",
        "lat": 53.9,
        "lon": 27.57,
        "tz_id": "Europe/Minsk",
        "localtime_epoch": 1557160118,
        "localtime": "2019-05-06 19:28"
        }
        """
        }
    
    var invalidJSON: String {
        return """
        {
        "country": "Belarus",        
        "tz_id": "Europe/Minsk",
        "localtime_epoch": 1557160118,
        "localtime": "2019-05-06 19:28"
        }
        """
        }
}
