//
//  DeliveryAdressView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 16.08.2025.
//

import SwiftUI

struct DeliveryAddressView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        ZStack {
            Color(.yellowBase)
                .ignoresSafeArea()
                .padding(.bottom, 20)
            VStack {
                HStack {
                    Button {
                        router.navigateBack()
                    } label: {
                        Text("<")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .foregroundStyle(.orangeBase)
                    }
                    Spacer()
                    Text("Delivery Adress")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundStyle(.white)
                    Spacer()
                }
                .padding()
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .ignoresSafeArea()
                    .overlay(
                        ScrollView {
                            DeliveryAddressContentView()
                                .padding(.top, 10)
                        }
                    )
            }
        }
        .toolbar(.hidden)
    }
}

#Preview {
    DeliveryAddressView()
}
