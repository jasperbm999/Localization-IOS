//
//  ContentView.swift
//  swiftuitest
//
//  Created by Jasper Broekmans on 03/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack (alignment: .leading) {
                VStack (alignment: .leading) {
                    HStack {
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                            .frame(width: 24, height: 24)
                         
                        Spacer()
                         
                        Image(systemName: "magnifyingglass").resizable()
                            .frame(width: 24, height: 24)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.secondary)
                            .clipShape(Circle())
                            .shadow(radius: 8)
                    }
                    Text(LocalizedStringKey("food_bazaar"))
                        .font(.title)
                        .foregroundColor(.secondary)
                    Text(LocalizedStringKey("results"))
                        .font(.title)
                        .foregroundColor(.primary)
                     
                    ScrollView(.vertical, showsIndicators: false) {
                        HStack (spacing: 20) {
                            FoodItem()
                            FoodItem()
                        }
                        HStack (spacing: 20) {
                            FoodItem()
                            FoodItem()
                        }
                        HStack (spacing: 20) {
                            FoodItem()
                            FoodItem()
                        }
                    }
                }
 
            }.padding().edgesIgnoringSafeArea(.bottom)
             
            Button(action: {}) {
                Image(systemName: "cart")
                    .resizable()
                    .frame(width: 12, height: 12)
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
                Text(LocalizedStringKey("your_items"))
                    .foregroundColor(.white)
                    .padding(.horizontal)
            }
            .background(Color.black.opacity(0.8))
            .clipShape(Capsule())
            .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


