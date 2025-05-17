//
//  Condition.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import Foundation

struct Condition: Decodable {
    let text: String //Текст погодных условий
    let icon: String //URL иконки
}
