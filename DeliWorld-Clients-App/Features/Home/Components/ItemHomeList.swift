//
//  ItemHomeList.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 25.08.2025.
//

import SwiftUI

struct ItemHomeList: View {
    
    @EnvironmentObject var router: Router
    var title: String
    var subtitle: String
    
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
                    Spacer()
                    Text(title)
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundStyle(.white)
                    Spacer()
                }
                .padding()
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .ignoresSafeArea()
                    .overlay(
                        ItemHomeListContent(subtitle: subtitle)
                            .padding(.top, 10)
                    )
            }
        }
        .toolbar(.hidden)
    }
}

#Preview {
    ItemHomeList(title: "Test List", subtitle: "Test Subtitle")
}
