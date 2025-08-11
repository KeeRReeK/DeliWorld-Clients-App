//
//  BestSellerViewContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 11.08.2025.
//

import SwiftUI

struct BestSellerViewContent: View {
    
    let items = ["Sunny Bruschetta", "Gourmet Grilled Skewers", "Barbecue tacos",
                 "Broccoli lasagna", "Hello Kitty Pizza", "Spicy Thai Basil Chicken", "Spicy Thai Basil Chicken"]
    
    var body: some View {
        VStack {
            
            Text("Discover our most popular dishes!")
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundStyle(.orangeBase)
                .padding(.top, 20)
            
            ScrollView {
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], spacing: 10) {
                    ForEach(items, id: \.self) { item in
                        BestSellerItemFull(text: item)
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
    BestSellerViewContent()
}
