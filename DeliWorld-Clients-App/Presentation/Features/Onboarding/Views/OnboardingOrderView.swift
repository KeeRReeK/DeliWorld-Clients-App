//
//  OnboardingOrderView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 22.07.2025.
//

import SwiftUI

struct OnboardingOrderView: View {
    
    @EnvironmentObject var router: Router
    
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
                    router.navigate(to: .launchWelcome)
                }
                .font(.leagueSpartanBold(size: 20))
                .foregroundColor(.orangeBase)
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
            }
        }
    }
}

struct OnboardingOrderContent: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack(spacing: 30) {
            
            Image("Onboarding Order Icon")
                .font(.system(size: 36))
                .foregroundColor(.orangeBase)
            
            Text("Order For Food")
                .font(.interRegularBlack(size: 24))
                .foregroundColor(.orangeBase)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.")
                .font(.leagueSpartanMedium(size: 14))
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
                router.navigate(to: .onboardingPayment)
            }
            .frame(maxWidth: 130)
            .frame(height: 36)
            .background(.orangeBase)
            .foregroundColor(.white)
            .font(.leagueSpartanMedium(size: 17))
            .clipShape(Capsule())
            
        }
    }
}

#Preview {
    OnboardingOrderView()
}
