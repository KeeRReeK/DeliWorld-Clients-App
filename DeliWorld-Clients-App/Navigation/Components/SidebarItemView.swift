//
//  SidebarItemView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 20.08.2025.
//

import SwiftUI

struct SidebarItemView: View {
    let image: String
    let text: String
    
    var body: some View {
        VStack {
            Button {
                
            } label: {
                HStack(alignment: .center, spacing: 20) {
                    RoundedRectangle(cornerRadius: 15)
                        .frame (width: 40, height: 40)
                        .foregroundStyle(.white)
                        .overlay {
                            Image(image)
                        }
                    Text(text)
                        .font(.leagueSpartanMedium(size: 24))
                        .foregroundStyle(.yellow2)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(5)
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 1)
        }
    }
}

#Preview {
    SidebarItemView(image: "None", text: "None")
}
