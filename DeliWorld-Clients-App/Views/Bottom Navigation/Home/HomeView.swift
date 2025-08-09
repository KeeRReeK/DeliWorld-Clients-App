//
//  HomeView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 25.07.2025.
//

import SwiftUI

struct HomeView: View {
    
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
                    TextField("Search", text: .constant(""))
                        .padding()
                        .background(Color.white)
                        .cornerRadius(30)
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
                    Text(attributedWelcomeString)
                        .padding(.leading)
                    Spacer()
                }
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .overlay(
                        ScrollView {
                            HomeViewContent()
                        }
                            .padding(.top, 10)
                    )
                    .ignoresSafeArea()
                
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
                    SlidebarContent(isMenuOpen: $isMenuOpen)
                        .transition(.move(edge: .leading))
                        .padding(.trailing, 100)
                } else if isCartOpen {
                    CartContent(isCartOpen: $isCartOpen, cartIsEmpty: $cartIsEmpty)
                        .transition(.move(edge: .leading))
                        .padding(.trailing, 100)
                }
                Spacer()
            }
        }
    }
    
    var attributedWelcomeString: AttributedString {
        var string = AttributedString("Good Morning" + "\n " + "Rise and shine! It's breakfast time")
        
        if let temp = string.range(of: "Good Morning") {
            string[temp].font = .custom("LeagueSpartan-Bold", size: 40)
            string[temp].foregroundColor = .white
        }
        
        if let weather = string.range(of: "Rise and shine! It's breakfast time") {
            string[weather].font = .custom("LeagueSpartan-Medium", size: 20)
            string[weather].foregroundColor = .orangeBase
        }
        
        return string
    }
}



#Preview {
    HomeView()
}
