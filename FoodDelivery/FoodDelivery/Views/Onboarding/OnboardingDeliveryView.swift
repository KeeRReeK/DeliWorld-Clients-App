//
//  OnboardingDeliveryView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 24.07.2025.
//

import SwiftUI

struct OnboardingDeliveryView: View {
    var body: some View {
        ZStack {
            Image("Background Onboarding Delivery")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .frame(maxHeight: 338)
                    .overlay(
                        OnboardingDeliveryContent()
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
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
            }
        }
    }
}

struct OnboardingDeliveryContent: View {
    var body: some View {
        VStack(spacing: 30) {
            
            Image("Onboarding Delivery Icon")
                .font(.system(size: 36))
                .foregroundColor(.orangeBase)
            
            Text("Fast Delivery")
                .font(.custom("Inter-Regular_Black", size: 24))
                .foregroundColor(.orangeBase)
            
            Text("Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.")
                .font(.custom("LeagueSpartan-Medium", size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .padding(.horizontal, 60)
            
            HStack(spacing: 8) {
                RoundedRectangle(cornerRadius: 12)
                    .fill(.yellow2)
                    .frame(width: 20, height: 4)
                RoundedRectangle(cornerRadius: 12)
                    .fill(.yellow2)
                    .frame(width: 20, height: 4)
                RoundedRectangle(cornerRadius: 12)
                    .fill(.orangeBase)
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
    OnboardingDeliveryView()
}
