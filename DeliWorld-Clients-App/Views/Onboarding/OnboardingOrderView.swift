//
//  OnboardingOrderView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 22.07.2025.
//

import SwiftUI

struct OnboardingOrderView: View {
    var body: some View {
        ZStack {
            Image("Background Onboarding Order")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .frame(maxHeight: 338)
                    .overlay(
                        OnboardingOrderContent()
                    )
                
            }
            .ignoresSafeArea()
        }
        .safeAreaInset(edge: .top) {
            HStack {
                Spacer()
                Button("Skip >") {
                    
                }
                .font(.custom("LeagueSpartan-Bold", size: 20))
                .foregroundColor(.orangeBase)
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
            }
        }
    }
}

struct OnboardingOrderContent: View {
    var body: some View {
        VStack(spacing: 30) {
            
            Image("Onboarding Order Icon")
                .font(.system(size: 36))
                .foregroundColor(.orangeBase)
            
            Text("Order For Food")
                .font(.custom("Inter-Regular_Black", size: 24))
                .foregroundColor(.orangeBase)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.")
                .font(.custom("LeagueSpartan-Medium", size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .padding(.horizontal, 60)
            
            HStack(spacing: 8) {
                RoundedRectangle(cornerRadius: 12)
                    .fill(.orangeBase)
                    .frame(width: 20, height: 4)
                RoundedRectangle(cornerRadius: 12)
                    .fill(.yellow2)
                    .frame(width: 20, height: 4)
                RoundedRectangle(cornerRadius: 12)
                    .fill(.yellow2)
                    .frame(width: 20, height: 4)
            }
            
            Button("Next") {
                
            }
            .frame(maxWidth: 130)
            .frame(height: 36)
            .background(.orangeBase)
            .foregroundColor(.white)
            .font(.custom("LeagueSpartan-Medium", size: 17))
            .clipShape(Capsule())
            
        }
    }
}

#Preview {
    OnboardingOrderView()
}
