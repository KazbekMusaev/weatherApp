//
//  Forecast.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import Foundation

struct Forecast: Decodable {
    let forecastday: [ForecastDay]
}

