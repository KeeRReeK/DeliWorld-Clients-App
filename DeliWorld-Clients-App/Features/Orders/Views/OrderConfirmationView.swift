//
//  OrderConfirmedView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 11.08.2025.
//

import SwiftUI

struct OrderConfirmationView: View {
    
    var body: some View {
        ZStack {
            Color(.yellowBase)
                .ignoresSafeArea()
                .padding(.bottom, 20)
            VStack(spacing: 10) {
                HStack {
                    Button {
                        
                    } label: {
                        Text("<")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .foregroundStyle(.orangeBase)
                    }
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 50)
                
                Spacer()
                
                VStack(spacing: 20) {
                    
                    Image("Order Image")
                    Text("¡Order Confirmed!")
                        .font(.interRegularBlack(size: 24))
                    
                    Text("Your order has been placed succesfully")
                        .font(.leagueSpartanMedium(size: 18))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                    
                    Text("Delivery by Thu, 29th, 4:00 PM")
                        .padding()
                    
                    Button("Track my order") {
                        
                    }
                    .foregroundStyle(.orangeBase)
                    .font(.system(size: 20, weight: .bold))
                    .padding(.top, 20)
                    
                }
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    OrderConfirmationView()
}
