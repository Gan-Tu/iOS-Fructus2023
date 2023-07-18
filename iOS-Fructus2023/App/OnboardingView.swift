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
            ForEach(0..<5) {item in
                FruitCardView()
            }
        } //: TAB
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
