//
//  APIClient.swift
//  weather weather
//
//  Created by Vladislav Sharaev on 4/6/19.
//  Copyright © 2019 Vladislav Sharaev. All rights reserved.
//

import Foundation

enum Either<V, E: Error>{
    case value(V)
    case error(E)
}

enum APIError: Error {
    case apiError
    case badResponse
    case jsonDecorder
    case unknown(String)
}

protocol APIClient {
    var session: URLSession { get }
    func fetch<V: Codable>(with request: URLRequest, completion: @escaping(Either<V, APIError>) -> Void)
}

extension APIClient {
    
    func fetch<V: Codable>(with request: URLRequest, completion: @escaping(Either<V, APIError>) -> Void){
        
        //print(request.url)
        //print(request)
        
        let task = session.dataTask(with: request){ (data, response, error) in
            guard error == nil else{
                completion(.error(.apiError))
                return
            }
            
            guard let response = response as? HTTPURLResponse, 200..<300 ~= response.statusCode else {
                completion(.error(.badResponse))
                return
            }
            
            do {
                let value = try JSONDecoder().decode(V.self, from: data!)
                completion(.value(value))
            } catch let error {
                print(error)
                completion(.error(.jsonDecorder))
            }
        }
        task.resume()
    }
    
}
