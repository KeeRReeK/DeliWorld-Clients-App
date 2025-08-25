//
//  ItemFullView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 12.08.2025.
//

import SwiftUI

struct ItemCard: View {
    
    @EnvironmentObject var router: Router
    var text: String
    
    var body: some View {
        VStack(spacing: 10) {
            Image("Food Recommend Card")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
            HStack {
                Text(text)
                    .font(.system(size: 15))
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                Spacer()
                Text("$25.00")
                    .font(.leagueSpartanRegular(size: 18))
                    .foregroundStyle(.orangeBase)
            }
            HStack {
                Text("Lorem ipsum dolor sit amet, consectetur...")
                    .font(.system(size: 12))
                Spacer()
            }
            
        }
        .onTapGesture {
            router.navigate(to: .dishDetail)
        }
        .padding()
        .background(.lightGrayCustom)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
    }
}

#Preview {
    ItemCard(text: "pizza")
}
