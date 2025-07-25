//
//  LoginView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 24.07.2025.
//

import SwiftUI

struct LogInView: View {
    var body: some View {
        ZStack {
            Color("Yellow Base")
                .ignoresSafeArea()
            VStack {
                Text("Log In")
                    .foregroundStyle(.white)
                    .font(.system(size: 28, weight: .bold))
                    .padding(.top, 65)
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .overlay(
                        ScrollView {
                            LogInContent()
                        }
                            .padding(.top, 25)
                    )
                    .padding(.top, 35)
            }
            .ignoresSafeArea()
        }
    }
}

struct LogInContent: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isSecurePassword: Bool = true
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Welcome")
                .font(.custom("LeagueSpartan-SemiBold", size: 24))
            
            Text("Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.")
                .font(.system(size: 14, weight: .light))
                .padding(.top, 5)
            
            
            Text("Email or Mobile Number")
                .font(.system(size: 20, weight: .medium))
                .padding(.top, 20)
            
            TextField(
                "",
                text: $email,
                prompt: Text("enter your email address").foregroundColor(.gray)
            )
            .padding()
            .background(.yellow2)
            .cornerRadius(13)
            
            Text("Password")
                .font(.system(size: 20, weight: .medium))
                .padding(.top, 20)
            
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
            
            VStack(alignment: .trailing) {
                Button("Forget Password") {
                    print("Forget Password")
                }
                .font(.custom("LeagueSpartan-Medium", size: 14))
                .foregroundStyle(.orangeBase)
                .padding(5)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            VStack(alignment: .center) {
                Button("Log In") {
                    print("Log In")
                }
                .font(.custom("LeagueSpartan-Medium", size: 24))
                .padding()
                .frame(width: 200)
                .foregroundStyle(.white)
                .background(.orangeBase)
                .cornerRadius(30)
                .padding(.top, 60)
                
                AuthProvidersView()
                    .padding(.top)
                
                HStack(spacing: 0) {
                    Text("Don't have an account? ")
                        .font(.system(size: 14))
                        .foregroundColor(.black)

                    Button(action: {
                        print("Sign Up")
                    }) {
                        Text("Sign Up")
                            .font(.system(size: 14))
                            .foregroundColor(.orangeBase)
                    }
                }
                
                
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
    }
}


#Preview {
    LogInView()
}
