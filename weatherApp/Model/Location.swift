//
//  Location.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import Foundation

struct Location: Decodable {
    let name: String //Имя Города
    let region: String //Название региона
    let country: String //Страна
    let lat: Double //Ширина
    let lon: Double //Долгота
    let tz_id: String //Часовой пояс
    let localtime: String //Локальное время
}
