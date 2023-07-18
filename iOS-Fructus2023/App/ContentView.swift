//
//  ContentView.swift
//  iOS-Fructus2023
//
//  Created by Gan Tu on 7/16/23.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .listStyle(.inset)
            .navigationTitle("Fruits")
            .toolbar {
                Button(action: {
                    isShowingSettings = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                })
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
            }
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
