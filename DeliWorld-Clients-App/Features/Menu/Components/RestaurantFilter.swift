//
//  RestourantItemView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 09.08.2025.
//

import SwiftUI

struct RestaurantFilter: View {
    
    var body: some View {
        VStack {
            Image("Asia Restaurant")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 70)
            Text("Asia Food")
                .font(.leagueSpartanLight(size: 15))
        }
        .padding(.horizontal)
    }
}

#Preview {
    RestaurantFilter()
}
