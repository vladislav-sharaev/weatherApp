//
//  IsDayImageState.swift
//  weather weather
//
//  Created by Vladislav Sharaev on 4/16/2019.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import Foundation
import UIKit

enum IsDayImageState: Int {
    case night
    case day
    case unknown
    
    init(value: Int) {
        
        if let state = IsDayImageState.init(rawValue: value) {
            self = state
        } else {
            self = .unknown
        }
    }
    
    var image: UIImage? {
        
        switch self {
            case .night:
                return UIImage(named: "backGroundNight")
            case .day:
                return UIImage(named: "backgroundDay")
            case .unknown:
                return UIImage(named: "backGroundAllDays")
        }
    }
    
    var textColor: UIColor? {
        switch self {
        case .night:
            return UIColor.white
        default:
            return UIColor.black
        }
    }
    
    var backgroundColor: UIColor? {
        switch self {
        case .night:
            return UIColor.darkGray
        default:
            return UIColor.cyan
        }
    }
}
