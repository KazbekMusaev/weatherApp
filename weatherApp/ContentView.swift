//
//  ContentView.swift
//  weatherApp
//
//  Created by KazbekMusaev on 17.05.2025.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = ViewModel()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello!")
        }
        .padding()
        .onAppear {
            viewModel.loadData()
        }
    }
}

#Preview {
    ContentView()
}
