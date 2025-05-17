//
//  Current.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import Foundation

struct Current: Decodable {
    let last_updated: String //Последнее обновление
    let temp_c: Double //Темпиратура
    let is_day: Int //День или ночь
    let condition: Condition
    let wind_kph: Double //Скорость ветра
    let humidity: Int //Влажность
    let cloud: Int //Облачность
    let feelslike_c: Double //Ощущается как
    let vis_km: Double //Видимость
    let gust_kph: Double //Скорость ветра
}
