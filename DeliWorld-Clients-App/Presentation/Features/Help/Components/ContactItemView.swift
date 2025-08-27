//
//  ContactUsItemView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 14.08.2025.
//

import SwiftUI

struct ContactItemView: View {
    
    let image: String
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .frame(width: 50, height: 50)
            Text(title)
                .font(.system(size: 25))
        }
        .frame(maxWidth: .infinity)
        .background()
        .cornerRadius(15)
        .onTapGesture {
            print(title)
        }
        .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
    }
}

#Preview {
    ContactItemView(image: "rectangle.and.pencil.and.ellipsis", title: "Whats app")
}
