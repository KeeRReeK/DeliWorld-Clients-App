//
//  CheckoutView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 09.08.2025.
//

import SwiftUI

struct CheckoutView: View {
    
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
                    Text("Payment")
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
                            CheckoutContentView()
                                .padding(.top, 10)
                        }
                    )
            }
        }
        .navigationBarHidden(true)
    }
}


#Preview {
    CheckoutView()
}
