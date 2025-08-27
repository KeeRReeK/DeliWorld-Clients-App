//
//  OrderCancellationConfirmedView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 14.08.2025.
//

import SwiftUI

struct CancellationConfirmedView: View {
    var body: some View {
        ZStack {
            Color(.yellowBase)
            
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
                    Text("¡Order Cancelled!")
                        .font(.interRegularBlack(size: 24))
                    
                    Text("Your order has been successfully cancelled")
                        .font(.leagueSpartanMedium(size: 18))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                    
                    Spacer()
                        .frame(height: 170)
                    
                    Text("If you have any questions, please reach out directly to our customer support")
                        .font(.leagueSpartanMedium(size: 18))
                        .multilineTextAlignment(.center)
                        .padding(30)
                    
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    CancellationConfirmedView()
}
