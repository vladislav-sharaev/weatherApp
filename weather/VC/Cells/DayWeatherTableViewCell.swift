//
//  DayWeatherTableViewCell.swift
//  weather weather
//
//  Created by Vladislav Sharaev on 4/9/19.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import UIKit

class DayWeatherTableViewCell: UITableViewCell {
    
    @IBOutlet weak var MinTempC: UILabel!
    @IBOutlet weak var MaxTempC: UILabel!
    @IBOutlet weak var dateLabel: UILabel!    
    @IBOutlet weak var dayIconImage: UIImageView!
    @IBOutlet weak var conditionDayLabel: UILabel!
    
    var indexPath: IndexPath?
}
