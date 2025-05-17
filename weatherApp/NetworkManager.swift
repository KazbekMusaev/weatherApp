//
//  NetworkManager.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import Foundation

final class NetworkManager: ObservableObject {
    
    @Published var posts = [WeatherModel]()
    
    func loadData(complition: @escaping (Result<WeatherModel, Error>) -> Void ) {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.weatherapi.com"
        urlComponents.path = "/v1/forecast.json"
        
        urlComponents.queryItems = [
        URLQueryItem(name: "key", value: "d5c7c30b644349448a4202552242704"),
        URLQueryItem(name: "q", value: "Moscow"),
        URLQueryItem(name: "lang", value: "ru"),
        URLQueryItem(name: "days", value: "5")
        ]
        guard let url = urlComponents.url else { return }
        let req = URLRequest(url: url)
        URLSession.shared.dataTask(with: req) { data, responce, error in
            guard error == nil else {
                complition(.failure(error!))
                return
            }
            guard let data else { return }
            do {
                let decodeData = try JSONDecoder().decode(WeatherModel.self, from: data)
                complition(.success(decodeData))
            } catch {
                complition(.failure(error))
            }
        }.resume()
        
    }
    
}
