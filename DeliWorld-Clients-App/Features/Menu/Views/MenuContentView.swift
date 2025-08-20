//
//  MenuViewContent.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 07.08.2025.
//

import SwiftUI

struct MenuContentView: View {
    
    let items = ["Sunny Bruschetta", "Gourmet Grilled Skewers", "Barbecue tacos",
                 "Broccoli lasagna", "Hello Kitty Pizza", "Spicy Thai Basil Chicken", "Spicy Thai Basil Chicken"]
    
    @State private var isGridView = true
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Button {
                    isGridView = false
                } label: {
                    Image(systemName: "list.bullet")
                        .font(.system(size: 20))
                        .foregroundColor(!isGridView ? .orangeBase : .gray)
                }
                
                Button {
                    isGridView = true
                } label: {
                    Image(systemName: "square.grid.2x2")
                        .font(.system(size: 20))
                        .foregroundColor(isGridView ? .orangeBase : .gray)
                }
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
            .padding(.horizontal)
            
            if isGridView {
                ScrollView {
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ], spacing: 10) {
                        ForEach(items, id: \.self) { item in
                            ItemCard(text: item)
                                .padding(5)
                        }
                    }
                    .padding(.horizontal)
                }
            } else {
                ScrollView {
                    VStack {
                        MenuItemCard(title: "Pizza")
                        MenuItemCard(title: "Pasta")
                        MenuItemCard(title: "Salad")
                        MenuItemCard(title: "Sandwich")
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    MenuContentView()
}
