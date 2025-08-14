//
//  ContactUsView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 14.08.2025.
//

import SwiftUI

struct ContactUsView: View {
    var body: some View {
        VStack {
            ContactUsItemView(image: "message", title: "telegram1")
            ContactUsItemView(image: "message", title: "telegram2")
            ContactUsItemView(image: "message", title: "telegram3")
            ContactUsItemView(image: "message", title: "telegram4")
        }
    }
}

#Preview {
    ContactUsView()
}
