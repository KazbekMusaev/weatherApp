//
//  WeatherDayRow.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import SwiftUI

struct WeatherDayRow: View {
    let day: ForecastDay
    
    var body: some View {
        HStack(spacing: 16) {
            
            AsyncImage(url: URL(string: "https:\(day.day.condition.icon)")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(day.date)
                    .font(.headline)
                Text(day.day.condition.text)
                    .font(.subheadline)
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 4) {
                Text("\(day.day.avgtemp_c, specifier: "%.1f")°C")
                    .font(.headline)
                Text("Ветер: \(day.day.maxwind_mph, specifier: "%.1f") км/ч")
                    .font(.caption)
                Text("Влажность: \(day.day.avghumidity, specifier: "%.0f")%")
                    .font(.caption)
            }
        }
        .padding(.vertical, 8)
    }
}
