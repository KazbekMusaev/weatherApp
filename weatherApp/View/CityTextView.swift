//
//  CityTextView.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import SwiftUI

struct CityTextView: View {
    @Binding var weather: WeatherModel
    var body: some View {
        Text(weather.location.country + ", " + weather.location.region)
            .bold()
            .font(.title)
            .foregroundStyle(.white)
            .shadow(radius: 10, y: -10)
    }
}
