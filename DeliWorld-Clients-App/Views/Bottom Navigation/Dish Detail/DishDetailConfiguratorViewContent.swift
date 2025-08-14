//
//  DishDetailConfiguratorViewContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 13.08.2025.
//

import SwiftUI

struct DishDetailConfiguratorViewContent: View {
    var body: some View {
        VStack {
            Image("Menu Item Example")
                .resizable()
                .scaledToFit()
                .frame(width: 320, height: 220)
            
            Divider()
                .foregroundStyle(.orangeBase)
            HStack {
                Text("$14.00")
                    .font(.custom("LeagueSpartan-Bold", size: 30))
                    .foregroundStyle(.orangeBase)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "minus")
//                        .resizable()
//                        .scaledToFit()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.white) // колір іконки
                        .padding()
                        .background(
                            Circle()
                                .fill(Color.orangeBase) // колір фону
                        )
                }
                
                Text("3")
                    .font(.system(.title))
                    .fontWeight(.bold)
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .frame(width: 5, height: 5)
                        .foregroundStyle(.white)
                        .padding()
                        .background(
                            Circle()
                                .fill(Color.orangeBase) // колір фону
                        )
                }
            }
            Divider()
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.")
                .font(.system(.callout))
            
            Button {
                
            } label: {
                Text("🛒 Add to Cart")
                    .font(.custom("LeagueSpartan-Bold", size: 30))
            }
            .foregroundStyle(.white)
            .padding()
            .background(.orangeBase)
            .cornerRadius(35)
            .padding(.top, 50)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DishDetailConfiguratorViewContent()
}
