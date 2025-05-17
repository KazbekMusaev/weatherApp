//
//  Day.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import Foundation

///Модель данных для дня из запроса Forecast
struct Day: Decodable {
    ///Темпиратура
    let avgtemp_c: Double
    ///Скорость ветра
    let maxwind_mph: Double
    ///Влажность
    let avghumidity: Double
    ///Иконка и описание
    let condition: Condition
}

