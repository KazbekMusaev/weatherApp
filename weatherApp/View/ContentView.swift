//
//  ContentView.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .white],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
            VStack {
                if viewModel.isDataLoad {
                    CityTextView(weather: $viewModel.weather)
                    TodayView(current: $viewModel.weather.current)
                    
                    ScrollView([.horizontal], showsIndicators: false){
                        LazyHGrid(rows: [GridItem(.adaptive(minimum: 200, maximum: 400))]) {
                            ForEach(viewModel.todayInfo, id: \.0) {
                                TodayInformationView(label: $0.0, information: String($0.1))
                            }
                        }
                    }
                    
                    List(viewModel.weather.forecast.forecastday, id: \.date) { day in
                        WeatherDayRow(day: day)
                    }
                    .listStyle(.plain)
                } else {
                    ProgressView("Загрузка данных...")
                }
            }
            
        }
        .onAppear {
            viewModel.loadData()
        }
    }
}

