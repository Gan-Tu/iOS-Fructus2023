//
//  SettingsRowView.swift
//  iOS-Fructus2023
//
//  Created by Gan Tu on 7/17/23.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)

            HStack {
                Text(name).foregroundStyle(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundStyle(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        SettingsRowView(name: "Developer", content: "John / Jane")
        SettingsRowView(name: "Website", linkLabel: "Wikipedia", linkDestination: "wikipedia.com")
        SettingsRowView(name: "Empty")
    }
    .padding()
}
