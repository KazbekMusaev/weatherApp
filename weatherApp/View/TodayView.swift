//
//  TodayView.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import SwiftUI

struct TodayView: View {
    @Binding var current: Current
    
    var body: some View {
        VStack(spacing: 10) {
            AsyncImage(url: URL(string: "https:\(current.condition.icon)")) { image in
                image.resizable()
                    .symbolRenderingMode(.multicolor)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                    .shadow(radius: 10, x: -20, y: 10)
            } placeholder: {
                ProgressView()
            }
            
            Text("\(Int(current.temp_c))C°")
                .font(.system(size: 40, weight: .semibold))
                .italic()
                .foregroundStyle(.white)
                .shadow(radius: 10, y: 20)
            Text(current.condition.text)
                .font(.system(size: 40, weight: .semibold))
                .italic()
                .foregroundStyle(.white)
                .shadow(radius: 10, y: 20)
        }
    }
}
