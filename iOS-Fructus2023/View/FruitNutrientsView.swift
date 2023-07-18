//
//  FruitNutrientsView.swift
//  iOS-Fructus2023
//
//  Created by Gan Tu on 7/17/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id:\.self) { itemIndex in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[itemIndex])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .bold()
                        .font(.body)

                        Spacer(minLength: 30)
                        
                        Text(fruit.nutrition[itemIndex])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: BOX
    }
}

#Preview {
    ZStack {
        Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        FruitNutrientsView(fruit: fruitsData[0])
    }
//    .foregroundStyle(.white)
}
