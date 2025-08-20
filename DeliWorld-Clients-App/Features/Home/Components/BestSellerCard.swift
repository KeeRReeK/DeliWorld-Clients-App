//
//  BestSellerItemView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 26.07.2025.
//

import SwiftUI

struct BestSellerCard: View {
    var image: String
    var price: String
    
    
    var body: some View {
        Button {
            
        } label: {
            ZStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                    .cornerRadius(20)
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.orangeBase)
                    .frame(width: 70, height: 30)
                    .overlay {
                        Text("$\(price)")
                            .font(.leagueSpartanMedium(size: 17))
                            .foregroundStyle(.white)
                            .padding(5)
                    }
                    .padding(.top, 100)
                    .offset(x: 20)
                
                
            }
            .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
        }
    }
}

#Preview {
    BestSellerCard(image: "Food Card Best Seller", price: "103,00")
}
