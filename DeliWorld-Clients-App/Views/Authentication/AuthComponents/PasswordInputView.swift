//
//  PasswordInputView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 25.07.2025.
//

import SwiftUI

struct PasswordInputView: View {
    
    @State var isSecurePassword: Bool = true
    @Binding var password: String
    
    var body: some View {
        if isSecurePassword {
            SecureField(
                "",
                text: $password,
                prompt:
                    Text("*************").foregroundColor(.gray)
            )
            .padding()
            .background(.yellow2)
            .cornerRadius(13)
            .overlay {
                HStack {
                    Spacer()
                    Image(
                        systemName: isSecurePassword ? "eye.slash" : "eye"
                    )
                    .foregroundColor(.gray)
                    .padding(.trailing, 10)
                    .onTapGesture {
                        isSecurePassword ? (isSecurePassword = false) : (isSecurePassword = true)
                    }
                }
            }
        } else {
            
            TextField(
                "",
                text: $password,
                prompt:
                    Text("*************").foregroundColor(.gray)
            )
            .padding()
            .background(.yellow2)
            .cornerRadius(13)
            .overlay {
                HStack {
                    Spacer()
                    Image(
                        systemName: isSecurePassword ? "eye.slash" : "eye"
                    )
                    .foregroundColor(.gray)
                    .padding(.trailing, 10)
                    .onTapGesture {
                        isSecurePassword ? (isSecurePassword = false) : (isSecurePassword = true)
                    }
                }
            }
        }
    }
}

#Preview {
    PasswordInputView(password: .constant("123456"))
}
