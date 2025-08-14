//
//  HelpView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 25.07.2025.
//

import SwiftUI

struct HelpView: View {
    
    @State private var selectedButton: Int? = 1
    let arrayButtons = ["FAQ", "Contact Us"]
    
    var body: some View {
        ZStack {
            Color(.yellowBase)
                .ignoresSafeArea()
                .padding(.bottom, 20)
            VStack {
                HStack {
                    Spacer()
                    Text("Help")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundStyle(.white)
                    Spacer()
                }
                .padding()
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .ignoresSafeArea()
                    .overlay(
                        VStack {
                            HStack(spacing: 16) {
                                ForEach(1...2, id: \.self) { index in
                                    ScreenSwitchButtonView(selectedButton: $selectedButton, index: index, name: arrayButtons[index - 1])
                                }
                            }
                            FAQView()
                                
                        }
                            .padding(.top, 10)
                    )
            }
        }
    }
}

#Preview {
    HelpView()
}
