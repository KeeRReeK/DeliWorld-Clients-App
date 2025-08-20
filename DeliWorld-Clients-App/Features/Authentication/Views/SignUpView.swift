//
//  SignUpView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 24.07.2025.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        ZStack {
            Color("Yellow Base")
                .ignoresSafeArea()
            VStack {
                Text("New Account")
                    .foregroundStyle(.white)
                    .font(.system(size: 28, weight: .bold))
                    .padding(.top, 65)
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .overlay(
                        ScrollView {
                            SignUpContent()
                        }
                            .padding(.top, 25)
                    )
                    .padding(.top, 35)
            }
            .ignoresSafeArea()
        }
    }
}

struct SignUpContent: View {
    @State private var email: String = ""
    @State private var nickname: String = ""
    @State private var password: String = ""
    @State private var dateOfBirth: Date = Date()
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Full name")
                .font(.system(size: 20, weight: .medium))
            
            TextField(
                "",
                text: $nickname,
                prompt: Text("Name").foregroundColor(.gray)
            )
            .padding()
            .background(.yellow2)
            .cornerRadius(13)
            
            Text("Password")
                .font(.system(size: 20, weight: .medium))
                .padding(.top, 20)
            
            
            PasswordInputView(password: $password)
            
            
            Text("Email")
                .font(.system(size: 20, weight: .medium))
                .padding(.top, 20)
            
            TextField(
                "",
                text: $email,
                prompt: Text("Email").foregroundColor(.gray)
            )
            .padding()
            .background(.yellow2)
            .cornerRadius(13)
            
            Text("Mobile Number")
                .font(.system(size: 20, weight: .medium))
                .padding(.top, 20)
            
            TextField(
                "",
                text: $email,
                prompt: Text("+123 456 789").foregroundColor(.gray)
            )
            .keyboardType(.phonePad)
            .padding()
            .background(.yellow2)
            .cornerRadius(13)
            
            
            Text("Date of birth")
                .font(.system(size: 20, weight: .medium))
                .padding(.top, 20)
            
            DatePicker("", selection: $dateOfBirth, displayedComponents: .date)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.yellow2)
                .cornerRadius(13)
                .labelsHidden()
            
            
            VStack(alignment: .center) {
                Button("Sign Up") {
                    print("Sign Up")
                }
                .font(.leagueSpartanMedium(size: 24))
                .padding()
                .frame(width: 200)
                .foregroundStyle(.white)
                .background(.orangeBase)
                .cornerRadius(30)
                .padding(.top, 40)
                
                AuthProvidersView()
                    .padding(.top, 5)
                
                HStack(spacing: 0) {
                    Text("Already have an account? ")
                        .font(.system(size: 14))
                        .foregroundColor(.black)

                    Button(action: {
                        print("Log in")
                    }) {
                        Text("Log in")
                            .font(.system(size: 14))
                            .foregroundColor(.orangeBase)
                    }
                }
                .padding(5)
                
                
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
    }
}

#Preview {
    SignUpView()
}
