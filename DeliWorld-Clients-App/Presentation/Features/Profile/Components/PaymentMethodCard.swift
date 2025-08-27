//
//  PaymentView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 20.08.2025.
//

import SwiftUI

struct PaymentMethodCard: View {
    
    @Binding var isChecked: Bool
    var image: String = "house"
    var nameTitleAdress: String = "My Home"
    
    var body: some View {
        VStack {
            Toggle(isOn: $isChecked) {
                HStack {
                    Image(systemName: image)
                        .font(.system(size: 50))
                        .foregroundStyle(.orangeBase)
                    VStack(alignment: .leading) {
                        Text(nameTitleAdress)
                            .font(.system(size: 25))
                            .foregroundStyle(.black)
                    }
                    Spacer()
                }
                .padding()
                .frame(width: 350, height: 100)
                .background()
                
            }
            .toggleStyle(.button)
        }
        .shadow(radius: 2)
    }
}
#Preview {
    PaymentMethodCard(isChecked: .constant(false))
}
