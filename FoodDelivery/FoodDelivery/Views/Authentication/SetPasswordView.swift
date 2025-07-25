//
//  SetPasswordView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 24.07.2025.
//

import SwiftUI

struct SetPasswordView: View {
    var body: some View {
        ZStack {
            Color("Yellow Base")
                .ignoresSafeArea()
            VStack {
                Text("Set Password")
                    .foregroundStyle(.white)
                    .font(.system(size: 28, weight: .bold))
                    .padding(.top, 65)
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .overlay(
                        ScrollView {
                            SetPasswordContent()
                        }
                            .padding(.top, 25)
                    )
                    .padding(.top, 35)
            }
            .ignoresSafeArea()
        }
    }
}

struct SetPasswordContent: View {
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var isSecurePassword: Bool = true
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Password")
                .font(.system(size: 20, weight: .medium))
            
            PasswordInputView(password: $password)
            
            Text("Confirm Password")
                .font(.system(size: 20, weight: .medium))
                .padding(.top, 20)
            
            PasswordInputView(password: $confirmPassword)
            
            VStack(alignment: .center) {
                Button("Create New Password") {
                    print("Log In")
                }
                .font(.custom("LeagueSpartan-Medium", size: 17))
                .padding()
                .frame(width: 200)
                .foregroundStyle(.white)
                .background(.orangeBase)
                .cornerRadius(30)
                .padding(.top, 60)
                
                
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
    }
}

#Preview {
    SetPasswordView()
}
