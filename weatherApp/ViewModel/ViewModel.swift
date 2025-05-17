//
//  ViewModel.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import Foundation
import Combine

final class ViewModel: ObservableObject {
    @Published private var weather: WeatherModel?
    @Published private var showInformationView: Bool = false
    
    func loadData() {
        
    }
}
