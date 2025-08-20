//
//  MenuItemView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 07.08.2025.
//

import SwiftUI

struct MenuItemCard: View {
    
    @State var title: String = "Pizza"
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("Menu Item Example")
                .resizable()
                .scaledToFit()
            HStack {
                Text(title)
                    .font(.system(size: 25, weight: .bold))
                RaitingView()
                Spacer()
                Text("$15.00")
                    .font(.leagueSpartanRegular(size: 25))
                    .foregroundStyle(.orangeBase)
            }
            Text("Tortilla Chips With Toppins")
                .font(.leagueSpartanLight(size: 17))
            
            Rectangle()
                .foregroundColor(.orange)
                .frame(height: 1)
                .padding(.vertical)
        }
        .padding(.horizontal)
    }
}

struct RaitingView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .overlay {
                HStack {
                    Text("5.0⭐️")
                        .foregroundStyle(.white)
                        .font(.system(.caption))
                }
            }
            .frame(width: 45, height: 18)
            .foregroundStyle(.orangeBase)
    }
}

#Preview {
    MenuItemCard()
}
