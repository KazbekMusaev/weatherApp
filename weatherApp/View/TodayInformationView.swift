//
//  TodayInformationView.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import SwiftUI

struct TodayInformationView: View {
    var label: String
    var information: String
    var body: some View {
        VStack {
            Text(label)
                .padding(.bottom, 5)
                .font(.system(size: 18, weight: .bold))
                .foregroundStyle(.white)
            Text(information)
                .font(.system(size: 18, weight: .bold))
                .foregroundStyle(.black)
        }
        .padding()
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 10, y: 10)
    }
}
