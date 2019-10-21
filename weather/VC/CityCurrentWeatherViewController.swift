//
//  CityCurrentWeatherViewController.swift
//  weather weather
//
//  Created by Vladislav Sharaev on 4/14/2019.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import UIKit

class CityCurrentWeatherViewController: UIViewController {
    
   
    @IBOutlet weak var tempC: UILabel!
    @IBOutlet weak var locationName: UILabel!
    @IBOutlet weak var localTime: UILabel!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var moreInformationButton: UIButton!
    @IBOutlet weak var isDayImageView: UIImageView!
    
    var cityName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        moreInformationButton.isHidden = true
        tempC.isHidden = true
        localTime.isHidden = true
        countryName.isHidden = true
        locationName.text = "Your city"
        
        moreInformationButton.layer.cornerRadius = 20
        moreInformationButton.layer.masksToBounds = true
        moreInformationButton.titleLabel?.numberOfLines = 2
        
        
    }
    
    @IBAction func actionShowMore(_ sender: UIButton) {
        
        //sender.pulsate()
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let identifier = "WeatherTableViewController"
        let controller = storyBoard.instantiateViewController(withIdentifier: identifier) as! WeatherTableViewController
        
        if let cityName = cityName {
            controller.cityName = cityName
            navigationController?.pushViewController(controller, animated: true)
        }
    }
}

extension CityCurrentWeatherViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        searchBar.resignFirstResponder()
        
        guard let cityName = searchBar.text, cityName.count > 0 else {
            return
        }
        
        let weatherApi = WeatherAPIClient()
        let weatherEndpoint = WeatherEndpoint.currentWeather(city: cityName)
        
        weatherApi.weather(with: weatherEndpoint) {(either) in
            switch either{
            case .value(let weather):
                
                let location = weather.location
                let currentWeather = weather.current
                
                self.cityName = cityName
                
                DispatchQueue.main.async {
                    
                    self.countryName.text = location.country
                    self.tempC.text = String(currentWeather.tempC)
                    self.localTime.text = location.localTime
                    self.locationName.text = location.name
                    self.moreInformationButton.isHidden = false
                    self.tempC.isHidden = false
                    self.countryName.isHidden = false
                    self.localTime.isHidden = false
                    
                    let dayState = IsDayImageState(value: currentWeather.isDay)
                    self.isDayImageView.image = dayState.image
                    self.tempC.textColor = dayState.textColor
                    self.localTime.textColor = dayState.textColor
                    self.locationName.textColor = dayState.textColor
                    self.countryName.textColor = dayState.textColor
                    
                    self.moreInformationButton.backgroundColor = dayState.backgroundColor
                    self.moreInformationButton.titleLabel?.textColor = dayState.textColor
                }
                
                print(weather)
            case .error(let error):
                print(error)
            }
        }
            
    }
}
