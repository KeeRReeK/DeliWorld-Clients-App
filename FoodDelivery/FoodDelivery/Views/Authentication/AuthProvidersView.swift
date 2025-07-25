//
//  AuthProvidersView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 25.07.2025.
//

import SwiftUI

struct AuthProvidersView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("or sign up with")
                .font(.system(size: 14))
            HStack(spacing: 10) {
                Image("Google Icon")
                Image("Facebook Icon")
            }
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

#Preview {
    AuthProvidersView()
}
