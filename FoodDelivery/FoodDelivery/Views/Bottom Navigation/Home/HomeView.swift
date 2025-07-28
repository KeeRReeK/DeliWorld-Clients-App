//
//  HomeView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 25.07.2025.
//

import SwiftUI

struct HomeView: View {
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

struct HomeViewContent: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text("Best Seller")
                    .font(.system(size: 25, weight: .medium))
                Spacer()
                Button {
                    
                } label: {
                    Text("View All  >")
                        .font(.custom("LeagueSpartan-Medium", size: 17))
                        .foregroundStyle(.orangeBase)
                }
            }
            
            ScrollView(.horizontal) {
                HStack(spacing: 15) {
                    BestSellerItemView(image: "Food Card Best Seller", price: "103,00")
                        .padding(.bottom, 15)
                    BestSellerItemView(image: "Food Card Best Seller@2", price: "50,00")
                        .padding(.bottom, 15)
                    BestSellerItemView(image: "Food Card Best Seller", price: "12,99")
                        .padding(.bottom, 15)
                    BestSellerItemView(image: "Food Card Best Seller@2", price: "8,20")
                        .padding(.bottom, 15)
                    BestSellerItemView(image: "Food Card Best Seller", price: "103,00")
                        .padding(.bottom, 15)
                }
            }
            
            SliderDiscountView()
                .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5)
            
            Text("Recommend")
                .font(.system(size: 25, weight: .medium))
            
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    RecommendItemView(raiting: 5, image: "Food Recommend Card", price: "25.00")
                    RecommendItemView(raiting: 5, image: "Food Recommend Card", price: "25.00")
                }
                .padding(.bottom, 15)
            }
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    HomeView()
}
