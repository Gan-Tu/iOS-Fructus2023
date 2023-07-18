//
//  FruitDetailView.swift
//  iOS-Fructus2023
//
//  Created by Gan Tu on 7/17/23.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20, content: {
                    // MARK: - Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // MARK: - Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        // MARK: - HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // MARK: - NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // MARK: - SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        // MARK: - DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // MARK: - LINK
                        SourceLinkView(
                            linkTitle: "Wikipedia",
                            destinationURL: URL(string: "https://en.m.wikipedia.org/wiki/\(fruit.title)")!)
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }) //: VSTACK
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
