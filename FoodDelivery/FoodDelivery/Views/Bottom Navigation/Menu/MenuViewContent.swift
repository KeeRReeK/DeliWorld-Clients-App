//
//  MenuViewContent.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 07.08.2025.
//

import SwiftUI

struct MenuViewContent: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Spacer()
                Text("Sort By")
                    .font(.custom("LeagueSpartan-Light", size: 18))
                Picker("", selection: .constant(0)) {
                    Text("Popular").tag(0)
                    Text("Newest").tag(1)
                    Text("Price: Low to High").tag(2)
                    Text("Price: High to Low").tag(3)
                }
                .tint(.orangeBase)
            }
            
            ScrollView {
                VStack {
                    MenuItemView(title: "Pizza")
                    MenuItemView(title: "Pasta")
                    MenuItemView(title: "Salad")
                    MenuItemView(title: "Sandwich")
                }
            }
            
            
                        
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    MenuViewContent()
}
