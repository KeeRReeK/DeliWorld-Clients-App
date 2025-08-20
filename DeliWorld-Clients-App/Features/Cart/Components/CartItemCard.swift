//
//  CartItemCard.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 20.08.2025.
//

import SwiftUI

struct CartItemCard: View {
    
    @State var image: String
    @State var name: String
    @State var price: Int
    @State var count: Int = 1
    
    var body: some View {
        VStack {
            HStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame( width: 80, height: 80)
                VStack(alignment: .leading) {
                    HStack {
                        Text(name)
                            .multilineTextAlignment(.leading)
                            .font(.custom("LeagueSpartan-Medium", size: 15))
                            .foregroundStyle(.white)
                        Spacer()
                        Button {
                            
                        } label: {
                            Image(systemName: "trash")
                                .foregroundStyle(.white)
                        }
                    }
                    HStack {
                        Text("$\(price * count)")
                            .font(.system(size: 14))
                            .foregroundStyle(.white)
                        Spacer()
                        Button {
                            if count > 1 {
                                count -= 1
                            }
                        } label: {
                            Image("Less Cart Icon")
                        }
                        Text("x\(count)")
                            .font(.system(size: 14))
                            .foregroundStyle(.white)
                        Button {
                            count += 1
                        } label: {
                            Image("Add Cart Icon")
                        }
                        .padding(.trailing, 5)
                    }
                    .padding(.top, 15)
                }
                
            }
            .background(.orangeBase)
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 1)
                .padding(.top, 10)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    
}

#Preview {
    CartItemCard(image: "Cart Item",
                 name: "Strawberry Shake",
                 price: 20)
}
