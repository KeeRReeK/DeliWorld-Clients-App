//
//  ItemHomeListContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 25.08.2025.
//

import SwiftUI

struct ItemHomeListContent: View {
    
    var subtitle: String
    
    let items = ["Sunny Bruschetta", "Gourmet Grilled Skewers", "Barbecue tacos",
                 "Broccoli lasagna", "Hello Kitty Pizza", "Spicy Thai Basil Chicken", "Spicy Thai Basil Chicken"]
    
    var body: some View {
        VStack {
            
            Text(subtitle)
                .font(.system(size: 20, weight: .bold, design: .default))
                .padding(.horizontal, 40)
                .multilineTextAlignment(.center)
                .foregroundStyle(.orangeBase)
                .padding(.top, 20)
            
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
            Spacer()
        }
    }
}

#Preview {
    ItemHomeListContent(subtitle: "Test subtitle")
}
