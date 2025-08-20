//
//  CategoryItemView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 09.08.2025.
//

import SwiftUI

struct CategoryFilter: View {
    var body: some View {
        VStack {
            Image("Category Meal")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 70)
                .clipShape(Circle())
            Text("Meal")
                .font(.custom("LeagueSpartan-Medium", size: 15))
        }
        .padding(.horizontal)
    }
}

#Preview {
    CategoryFilter()
}
