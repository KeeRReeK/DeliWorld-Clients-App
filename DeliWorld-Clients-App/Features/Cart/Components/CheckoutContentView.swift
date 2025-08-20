//
//  CheckoutViewContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 11.08.2025.
//

import SwiftUI

struct CheckoutContentView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text("Shipping Address")
                    .font(.system(size: 25, weight: .bold, design: .default))
                Button {
                    
                } label: {
                    Image("Edit Icon")
                }
            }
            
            Text("778 Locust View Drive Oaklanda, CA")
                .font(.leagueSpartanRegular(size: 18))
                .padding()
                .background(.yellow2)
                .cornerRadius(25)
            
            HStack {
                Text("Order Summary")
                    .font(.system(size: 20, weight: .medium))
                Spacer()
                Text("$40.00")
                    .font(.system(size: 20, weight: .medium))
            }
            .padding(.top, 20)
            
            Rectangle()
                .foregroundColor(.orangeBase)
                .frame(height: 1)
                .padding(.vertical)
            
            HStack {
                Text("Payment Method")
                    .font(.system(size: 20, weight: .medium))
                Spacer()
                Button {
                    
                } label: {
                    Text("Edit")
                        .font(.leagueSpartanRegular(size: 15))
                        .foregroundStyle(.orangeBase)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 5)
                        .background(.orange2)
                        .cornerRadius(15)
                }
                    .font(.system(size: 20, weight: .medium))
            }
            
            HStack {
                Image("Onboarding Payment Icon")
                Text("Credit cart")
                
                Spacer()
                
                Text("*** *** *** 43 /00 /000")
                    .font(.system(size: 14, weight: .medium))
                    .padding(8)
                    .background(.yellow2)
                    .cornerRadius(20)
            }
            
            Rectangle()
                .foregroundColor(.orangeBase)
                .frame(height: 1)
                .padding(.vertical)
            
            HStack {
                Text("Delivery Time")
                    .font(.system(size: 20, weight: .medium))
                Spacer()
                Text("25 mins")
                    .font(.system(size: 20, weight: .medium))
                    .foregroundStyle(.orangeBase)
            }
            
            HStack {
                Button {
                    
                } label: {
                    Text("Pay Now")
                        .font(.leagueSpartanBold(size: 25))
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal, 50)
                }
                .background(.orangeBase)
                .cornerRadius(25)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.top, 50)
            
            
            Spacer()
            
        }
        .padding(40)
    }
}

#Preview {
    CheckoutContentView()
}
