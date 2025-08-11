//
//  HomeViewContent.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 07.08.2025.
//

import SwiftUI

struct HomeViewContent: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text("Best Seller")
                    .font(.system(size: 25, weight: .medium))
                Spacer()
                Button {
                    
                } label: {
                    Text("View All  >")
                        .font(.custom("LeagueSpartan-Medium", size: 17))
                        .foregroundStyle(.orangeBase)
                }
            }
            
            ScrollView(.horizontal) {
                HStack(spacing: 15) {
                    BestSellerItemCompact(image: "Food Card Best Seller", price: "103,00")
                        .padding(.bottom, 15)
                    BestSellerItemCompact(image: "Food Card Best Seller@2", price: "50,00")
                        .padding(.bottom, 15)
                    BestSellerItemCompact(image: "Food Card Best Seller", price: "12,99")
                        .padding(.bottom, 15)
                    BestSellerItemCompact(image: "Food Card Best Seller@2", price: "8,20")
                        .padding(.bottom, 15)
                    BestSellerItemCompact(image: "Food Card Best Seller", price: "103,00")
                        .padding(.bottom, 15)
                }
            }
            
            SliderDiscountView()
                .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5)
            
            HStack {
                Text("Recommend")
                    .font(.system(size: 25, weight: .medium))
                Spacer()
                Button {
                    
                } label: {
                    Text("View All  >")
                        .font(.custom("LeagueSpartan-Medium", size: 17))
                        .foregroundStyle(.orangeBase)
                }
            }
            
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    RecommendItemView(raiting: 5, image: "Food Recommend Card", price: "25.00")
                    RecommendItemView(raiting: 5, image: "Food Recommend Card", price: "25.00")
                }
                .padding(.bottom, 15)
            }
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    HomeViewContent()
}
