//
//  MenuView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 25.07.2025.
//

import SwiftUI

struct MenuView: View {
    
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
                    TextField("Search dishes...", text: .constant(""))
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
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .ignoresSafeArea()
                    .padding(.top)
                    .overlay(
                        MenuContentView()
                            .padding(.top, 20)
                    )
                    
                
            }
            
            if isMenuOpen || isCartOpen {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            isMenuOpen = false
                            isCartOpen = false
                        }
                    }
            }
            
            HStack {
                if isMenuOpen {
                    ProfileSidebarView(isMenuOpen: $isMenuOpen)
                        .transition(.move(edge: .leading))
                        .padding(.trailing, 100)
                } else if isCartOpen {
                    CartView(isCartOpen: $isCartOpen, cartIsEmpty: $cartIsEmpty)
                        .transition(.move(edge: .leading))
                        .padding(.trailing, 100)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    MenuView()
}
