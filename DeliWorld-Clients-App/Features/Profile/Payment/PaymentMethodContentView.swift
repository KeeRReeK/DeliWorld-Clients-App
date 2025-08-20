//
//  PaymentMethodViewContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 18.08.2025.
//

import SwiftUI

struct PaymentMethodContentView: View {
    
    @State var isCheckedHome: Bool = false
    @State var isCheckedOffice: Bool = false
    
    var body: some View {
        VStack {
            PaymentMethodCard(isChecked: $isCheckedHome, image: "creditcard", nameTitleAdress: "Card")
            PaymentMethodCard(isChecked: $isCheckedOffice, image: "apple.logo", nameTitleAdress: "Apple pay")
        }
    }
}

#Preview {
    PaymentMethodContentView()
}
