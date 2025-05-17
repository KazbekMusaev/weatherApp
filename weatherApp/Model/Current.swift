//
//  Current.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import Foundation

struct Current: Decodable {
    ///Последнее обновление
    let last_updated: String
    ///Темпиратура
    let temp_c: Double
    ///День или ночь
    let is_day: Int
    let condition: Condition
    ///Скорость ветра
    let wind_kph: Double
    ///Влажность
    let humidity: Int
    ///Облачность
    let cloud: Int
    ///Ощущается как
    let feelslike_c: Double
    ///Видимость
    let vis_km: Double
    ///Скорость ветра
    let gust_kph: Double
}
