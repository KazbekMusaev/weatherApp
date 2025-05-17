//
//  WeatherModel.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import Foundation

///Модель для получения погоды из Api
struct WeatherModel: Decodable {
    var location: Location
    var current: Current
    let forecast: Forecast
}

