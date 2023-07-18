//
//  StartButtonView.swift
//  iOS-Fructus2023
//
//  Created by Gan Tu on 7/17/23.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            // todo
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }) //: BUTTON
        .accentColor(.white)
    }
}

#Preview {
    ZStack {
        Color.black.edgesIgnoringSafeArea(.all)
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
    
}
