//
//  ViewModel.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import Foundation
import Combine

final class ViewModel: ObservableObject {
    @Published var weather: WeatherModel = WeatherModel(location: Location(name: "Загрузка", region: "...", country: "", lat: 0, lon: 0, tz_id: "", localtime: ""), current: Current(last_updated: "", temp_c: 0, is_day: 0, condition: Condition(text: "", icon: ""), wind_kph: 0, humidity: 0, cloud: 0, feelslike_c: 0, vis_km: 0, gust_kph: 0), forecast: Forecast(forecastday: []))
    @Published var isDataLoad: Bool = false
    @Published var todayInfo: [(String, Double)] = []
    
    let networkManager = NetworkManager()
    
    func loadData() {
        networkManager.loadData { [weak self] responce in
            guard let self else { return }
            switch responce {
            case .success(let model):
                var todayInfo: [(String, Double)] = []
                todayInfo.append(("Cкорость ветра", model.current.wind_kph))
                todayInfo.append(("Влажность", Double(model.current.humidity)))
                todayInfo.append(("Облачность", Double(model.current.cloud)))
                todayInfo.append(("Ощущается как", model.current.feelslike_c))
                todayInfo.append(("Видимость", model.current.vis_km))
                DispatchQueue.main.async {
                    self.weather = model
                    self.isDataLoad = true
                    self.todayInfo = todayInfo
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
