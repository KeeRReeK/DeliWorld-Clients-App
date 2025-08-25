//
//  DishDetailConfiguratorView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 13.08.2025.
//

import SwiftUI

struct DishDetailView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        ZStack {
            Color(.yellowBase)
                .ignoresSafeArea()
                .padding(.bottom, 20)
            VStack {
                HStack {
                    Button {
                        router.navigateBack()
                    } label: {
                        Text("<")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .foregroundStyle(.orangeBase)
                    }
                    Text("Pizza with Pepperoni and Cheese")
                        .font(.system(.title3))
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                    Spacer()
                }
                .padding()
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .ignoresSafeArea()
                    .overlay(
                        DishDetailContentView()
                            .padding(.top, 10)
                    )
            }
        }
        .toolbar(.hidden)
    }
}

#Preview {
    DishDetailView()
}
