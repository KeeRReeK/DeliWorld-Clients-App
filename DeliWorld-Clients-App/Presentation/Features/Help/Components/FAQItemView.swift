//
//  FAQItemView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 14.08.2025.
//

import SwiftUI

struct FAQItemView: View {
    
    @Binding var isExpanded: Bool
    
    let orderItems = ["hello", "how are you?", "where are you from?"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // Header
            HStack {
                Text("Lorem ipsum dolor sit amet?")
                
                Spacer()
                
                Button(action: {
                    withAnimation(.spring()) {
                        isExpanded.toggle()
                    }
                }) {
                    
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .foregroundColor(.gray)
                }
                .buttonStyle(PlainButtonStyle())
            }
            
            // Expanded details
            if isExpanded {
                VStack(alignment: .leading, spacing: 8) {
                    Divider()
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam.")
                }
                .font(.body)
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    FAQItemView(isExpanded: .constant(true))
}
