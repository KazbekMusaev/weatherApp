//
//  NetworkManager.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import Foundation

final class NetworkManager: ObservableObject {
    
    @Published var posts = [WeatherModel]()
    
    func loadData(_ cityName: String ,complition: @escaping (WeatherModel) -> Void ) {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.weatherapi.com"
        urlComponents.path = "/v1/current.json"
        
        urlComponents.queryItems = [
        URLQueryItem(name: "key", value: "d5c7c30b644349448a4202552242704"),
        URLQueryItem(name: "q", value: cityName),
        URLQueryItem(name: "lang", value: "ru"),
        ]
        guard let url = urlComponents.url else { return }
        let req = URLRequest(url: url)
        URLSession.shared.dataTask(with: req) { data, responce, error in
            guard error == nil else { return }
            guard let data else { return }
            if let decodeData = try? JSONDecoder().decode(WeatherModel.self, from: data) {
                complition(decodeData)
            }
        }.resume()
        
    }
    
}
