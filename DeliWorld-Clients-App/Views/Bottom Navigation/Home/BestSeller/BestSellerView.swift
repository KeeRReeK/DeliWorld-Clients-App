//
//  BestSellerView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 11.08.2025.
//

import SwiftUI

struct BestSellerView: View {
    
    var body: some View {
        ZStack {
            Color(.yellowBase)
                .ignoresSafeArea()
                .padding(.bottom, 20)
            VStack {
                HStack {
                    Button {
                        
                    } label: {
                        Text("<")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .foregroundStyle(.orangeBase)
                    }
                    Spacer()
                    Text("Best Seller")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundStyle(.white)
                    Spacer()
                }
                .padding()
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .ignoresSafeArea()
                    .overlay(
                        BestSellerViewContent()
                            .padding(.top, 10)
                    )
            }
        }
    }
}

#Preview {
    BestSellerView()
}
