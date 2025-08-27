//
//  RecommendItemView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 28.07.2025.
//

import SwiftUI

struct RecommendationCard: View {
    
    @EnvironmentObject var router: Router
    var raiting: Double
    var image: String
    var price: String
    
    var body: some View {
        Button {
            router.navigate(to: .dishDetail)
        } label: {
            ZStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 240)
                    .cornerRadius(20)
                
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.white)
                    .frame(width: 70, height: 25)
                    .overlay {
                        Text("5,0 ⭐️")
                            .foregroundStyle(.black)
                            .font(.leagueSpartanRegular(size: 17))
                    }
                    .padding(.bottom, 170)
                    .offset(x: -80)
                
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.orangeBase)
                    .frame(width: 90, height: 40)
                    .overlay {
                        Text("$\(price)")
                            .font(.leagueSpartanMedium(size: 22))
                            .foregroundStyle(.white)
                            .padding(5)
                    }
                    .padding(.top, 150)
                    .offset(x: 95)
                
                
            }
            .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
        }
    }
}

#Preview {
    RecommendationCard(raiting: 2.0, image: "Food Recommend Card", price: "103,00")
}
