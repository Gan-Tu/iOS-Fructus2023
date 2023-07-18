//
//  SourceLinkView.swift
//  iOS-Fructus2023
//
//  Created by Gan Tu on 7/17/23.
//

import SwiftUI

struct SourceLinkView: View {
    var linkTitle: String
    var destinationURL: URL

    var body: some View {
        GroupBox() {
            HStack {
                Text("Cotent Source")
                Spacer()
                Link(linkTitle, destination: destinationURL)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView(linkTitle: "Wikipedia", destinationURL: URL(string: "https://wikipedia.com")!)
        .padding()
}
