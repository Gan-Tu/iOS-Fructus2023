//
//  OnboardingView.swift
//  iOS-Fructus2023
//
//  Created by Gan Tu on 7/17/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
        
        
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<fruitsData.count, id:\.self) { itemIndex in
                FruitCardView(fruit: fruitsData[itemIndex])
            }
        } //: TAB
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
