//
//  FavoritesView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 25.07.2025.
//

import SwiftUI

struct FavoritesView: View {
    
    @State private var isMenuOpen = false
    @State private var isCartOpen = false
    @State private var cartIsEmpty = false
    
    var body: some View {
        ZStack {
            Color(.yellowBase)
                .ignoresSafeArea()
                .padding(.bottom, 20)
            VStack {
                HStack {
                    TextField("Find in favorites...", text: .constant(""))
                        .padding()
                        .background(Color.white)
                        .cornerRadius(30)
                        .overlay {
                            HStack {
                                Spacer()
                                Button {
                                    
                                } label: {
                                    ZStack {
                                        Circle()
                                            .padding(6)
                                            .foregroundColor(.orangeBase)
                                        Image("Filter Icon")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(maxHeight: 12)
                                    }
                                }
                            }
                        }
                        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5)
                    
                    Button {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            isCartOpen.toggle()
                        }
                    } label: {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.white)
                            .frame(width: 50, height: 50)
                            .overlay {
                                Image("Cart Icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 30)
                            }
                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5)
                    }
                    
                    Button {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            isMenuOpen.toggle()
                        }
                    } label: {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.white)
                            .frame(width: 50, height: 50)
                            .overlay {
                                Image("Profile Icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 30)
                            }
                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5)
                    }
                }
                .padding(.horizontal)
                
                HStack {
                    
                    Spacer()
                    Text("Favorites")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundStyle(.white)
                    Spacer()
                }
                .padding()
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .ignoresSafeArea()
                    .overlay(
                        FavoritesContentView()
                            .padding(.top, 10)
                    )
            }
        }
    }
}


#Preview {
    FavoritesView()
}
