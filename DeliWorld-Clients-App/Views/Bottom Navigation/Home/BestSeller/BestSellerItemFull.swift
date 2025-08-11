//
//  BestSellerItemFull.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 11.08.2025.
//

import SwiftUI

struct BestSellerItemFull: View {
    
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
                    .font(.system(size: 15))
            }
            HStack {
                Text("Lorem ipsum dolor sit amet, consectetur...")
                    .font(.system(size: 12))
                Spacer()
            }
            
        }
        .padding()
        .background(.yellow2)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
    }
}

#Preview {
    BestSellerItemFull(text: "Sunny Bruschetta")
}
