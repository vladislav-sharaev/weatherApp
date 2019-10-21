//
//  WeatherAPIClient.swift
//  weather weather
//
//  Created by Vladislav Sharaev on 4/7/19.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import Foundation

class WeatherAPIClient: APIClient {
    
    var session: URLSession
    init(session: URLSession = URLSession.shared) {
        self.session = session
    }
    
    func weather(with endpoint: WeatherEndpoint, completion: @escaping (Either<Weather, APIError>) -> Void){
        let request = endpoint.request
        fetch(with: request){ (either: Either<Weather, APIError>) in
            completion(either)
        }
    }
}
