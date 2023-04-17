//
//  FoodItem.swift
//  swiftuitest
//
//  Created by Jasper Broekmans on 03/04/2023.
//

import SwiftUI

struct FoodItem: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image(systemName: "flame.fill").resizable().frame(width: 16, height: 16).foregroundColor(.red)
                Text(LocalizedStringKey("fooditem_spiciness")).font(.footnote).foregroundColor(.primary)
            }
            Image("flat").resizable().aspectRatio(contentMode: .fill).frame(width: 100, height: 100)
             
            Text(LocalizedStringKey("fooditem_name")).font(.headline)
            Text(LocalizedStringKey("fooditem_description")).foregroundColor(.secondary).font(.subheadline).padding(.bottom, 12)
            Text(LocalizedStringKey("fooditem_price")).font(.title)
        }
        .frame(width: 160, height: 250).background(Color.secondary.opacity(0.3)).cornerRadius(12)
    }
    
    
}

struct FoodItem_Previews: PreviewProvider {
    static var previews: some View {
        FoodItem()
    }
}
