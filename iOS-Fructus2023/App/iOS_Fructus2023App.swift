//
//  iOS_Fructus2023App.swift
//  iOS-Fructus2023
//
//  Created by Gan Tu on 7/16/23.
//

import SwiftUI

@main
struct iOS_Fructus2023App: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
