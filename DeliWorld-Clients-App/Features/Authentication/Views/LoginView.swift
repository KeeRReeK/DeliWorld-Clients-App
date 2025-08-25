//
//  LoginView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 24.07.2025.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var router: Router
    
    
    var body: some View {
        ZStack {
            Color("Yellow Base")
                .ignoresSafeArea()
            VStack {
                HStack {
                    Button {
                        router.navigateBackTo(route: .launchWelcome)
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundStyle(.orangeBase)
                            .padding(.leading)
                    }
                    Spacer()
                    Text("Login")
                        .foregroundStyle(.white)
                        .font(.system(size: 28, weight: .bold))
                        .padding(.trailing, 30)
                    Spacer()
                }
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
            .navigationBarHidden(true)
        }
    }
}

struct LogInContent: View {
    
    @EnvironmentObject var router: Router
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isSecurePassword: Bool = true
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Email or Mobile Number")
                .font(.system(size: 20, weight: .medium))
            
            TextField(
                "",
                text: $email,
                prompt: Text("Email or Phone").foregroundColor(.gray)
            )
            .padding()
            .background(.yellow2)
            .cornerRadius(13)
            
            Text("Password")
                .font(.system(size: 20, weight: .medium))
                .padding(.top, 20)
            
            PasswordInputView(password: $password)
            
            VStack(alignment: .trailing) {
                Button("Forget Password") {
                    
                }
                .font(.leagueSpartanMedium(size: 14))
                .foregroundStyle(.orangeBase)
                .padding(5)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            VStack(alignment: .center) {
                Button("Log In") {
                    print("LogIn")
                }
                .font(.leagueSpartanMedium(size: 24))
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
                .padding(5)
                
                
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
    }
}


#Preview {
    LoginView()
}
