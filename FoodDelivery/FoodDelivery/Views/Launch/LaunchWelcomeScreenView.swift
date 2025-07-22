//
//  LaunchWelcomeScreenView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 22.07.2025.
//

import SwiftUI

struct LaunchWelcomeScreenView: View {
    var body: some View {
        ZStack {
            Color("Orange Base")
            
            VStack {
                Spacer()
                Image("Logo Welcome Screen")
                    .padding(.bottom, 40)
                Text("Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod.")
                    .multilineTextAlignment(.center)
                    .font(.custom("LeagueSpartan-Medium", size: 14))
                    .foregroundStyle(.white)
                    .padding(.bottom, 40)
                Button {
                    
                } label: {
                    Text("Log In")
                        .font(.custom("LeagueSpartan-Medium", size: 24))
                        .foregroundStyle(.orangeBase)
                        .padding(.vertical, 14)
                        .padding(.horizontal, 73)
                        .background(.yellowBase)
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                }
                Button {
                    
                } label: {
                    Text("Sign Up")
                        .font(.custom("LeagueSpartan-Medium", size: 24))
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
    }
}

#Preview {
    LaunchWelcomeScreenView()
}
