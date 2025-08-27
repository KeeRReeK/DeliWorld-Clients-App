//
//  LaunchWelcomeScreenView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 22.07.2025.
//

import SwiftUI

struct LaunchWelcomeScreenView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        ZStack {
            Color("Orange Base")
            
            VStack {
                Spacer()
                Image("Logo Welcome Screen")
                    .padding(.bottom, 40)
                Text("Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod.")
                    .multilineTextAlignment(.center)
                    .font(.leagueSpartanMedium(size: 14))
                    .foregroundStyle(.white)
                    .padding(.bottom, 40)
                Button {
                    router.navigate(to: .login)
                } label: {
                    Text("Log In")
                        .font(.leagueSpartanMedium(size: 24))
                        .foregroundStyle(.orangeBase)
                        .padding(.vertical, 14)
                        .padding(.horizontal, 73)
                        .background(.yellowBase)
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                }
                Button {
                    router.navigate(to: .signUp)
                } label: {
                    Text("Sign Up")
                        .font(.leagueSpartanMedium(size: 24))
                        .foregroundStyle(.orangeBase)
                        .padding(.vertical, 14)
                        .padding(.horizontal, 64)
                        .background(.yellow2)
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                }
                .padding(.bottom, 120)
            }
            
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

#Preview {
    LaunchWelcomeScreenView()
}
