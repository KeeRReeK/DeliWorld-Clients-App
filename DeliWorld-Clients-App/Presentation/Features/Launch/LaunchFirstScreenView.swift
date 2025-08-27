//
//  LaunchFirstScreen.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 21.07.2025.
//

import SwiftUI

struct LaunchFirstScreenView: View {
    var body: some View {
        ZStack {
            Color("Yellow Base")
            Image("Logo First Screen")
                .padding(.bottom, 20)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LaunchFirstScreenView()
}
