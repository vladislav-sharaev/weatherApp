//
//  WeatherTableViewController.swift
//  weather weather
//
//  Created by Vladislav Sharaev on 4/6/19.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import UIKit

class WeatherTableViewController: UITableViewController {
    
    var cellViewModels = [WeatherCellViewModel]()
    var cityName: String = String()
    
    let daysNumber = 20
    
    override func viewDidLoad() {	
        super.viewDidLoad()

        title = cityName
        
        loadWeather()
    }
    
    func loadWeather() {
        
        let weatherApi = WeatherAPIClient()
        let weatherEndpoint = WeatherEndpoint.tenDayForecat(city: cityName,
                                                            numberOfDays: String(daysNumber))
        
        weatherApi.weather(with: weatherEndpoint) {(either) in
            switch either{
            case .value(let weather):
                
                guard let forecast = weather.forecast else {
                    return
                }
                
                self.cellViewModels = forecast.forecastDays.map{
                    
                    WeatherCellViewModel(iconUrl: $0.day.condition.iconUrl,
                                         conditionDay:  $0.day.condition.text,
                                         day: $0.date,
                                         maxTempC: $0.day.maxTempC,
                                         minTempC: $0.day.minTempC)
                    
                }
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                print(weather)
            case .error(let error):
                print(error)
                
            }
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellViewModels.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DayWeatherTableViewCell", for: indexPath) as? DayWeatherTableViewCell else {
            return UITableViewCell()
        }
        
        let cellViewModel = cellViewModels[indexPath.row]
        cell.dateLabel?.text = cellViewModel.day
        cell.MinTempC?.text = "Minimal temperature ℃  " + String(cellViewModel.minTempC)
        cell.MaxTempC?.text = "Maximal temperature ℃  " + String(cellViewModel.maxTempC)
        cell.conditionDayLabel?.text = String(cellViewModel.conditionDay)
        cell.indexPath = indexPath
        
        
        DispatchQueue.global().async {
            do {
                guard let url = cellViewModel.iconUrl else {
                    return
                }
                
                let data = try Data(contentsOf: url)
                let image = UIImage(data: data)
                
                DispatchQueue.main.async {
                    if cell.indexPath == indexPath {
                        cell.dayIconImage.image = image
                    }
                }
            } catch let error {
                print(error)
            }
        }

        return cell
    }

}
