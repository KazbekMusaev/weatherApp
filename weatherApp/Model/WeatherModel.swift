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
}

struct Location: Decodable {
    let name: String //Имя Города
    let region: String //Название региона
    let country: String //Страна
    let lat: Double //Ширина
    let lon: Double //Долгота
    let tz_id: String //Часовой пояс
    let localtime: String //Локальное время
}

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

struct Condition: Decodable {
    let text: String //Текст погодных условий
    let icon: String //URL иконки
}
