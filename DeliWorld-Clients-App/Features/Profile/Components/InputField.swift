//
//  InputField.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 20.08.2025.
//

import SwiftUI

struct InputField: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.system(size: 20))
                .fontWeight(.bold)
            
            TextField(placeholder, text: $text)
                .keyboardType(keyboardType)
                .padding()
                .background(Color.yellow2)
                .cornerRadius(25)
        }
    }
}

#Preview {
    InputField(title: "hello", placeholder: "what's your name?", text: .constant(""))
}
