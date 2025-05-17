//
//  WeatherModel.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import Foundation

///Модель для получения погоды из Api
struct WeatherModel: Decodable {
    let location: Location
    let current: Current
    let forecast: Forecast
}

