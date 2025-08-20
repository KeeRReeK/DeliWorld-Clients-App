//
//  CartContent.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 29.07.2025.
//

import SwiftUI

struct CartView: View {
    
    @Binding var isCartOpen: Bool
    @Binding var cartIsEmpty: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.white)
                    .frame(width: 50, height: 50)
                    .overlay {
                        Image("Cart Icon")
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 30)
                    }
                Text("Cart")
                    .font(.leagueSpartanBold(size: 25))
                    .foregroundStyle(.white)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.bottom, 40)
            Divider()
                .background(.white)
            
            ScrollView {
                if cartIsEmpty {
                    VStack {
                        HStack {
                            Text("Your cart is empty")
                                .font(.system(size: 25, weight: .regular))
                                .foregroundStyle(.white)
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                        Spacer(minLength: 100)
                        
                        Button {
                            
                        } label: {
                            Circle()
                                .foregroundStyle(.orangeBase)
                                .overlay(
                                    Circle().strokeBorder(Color.white, lineWidth: 4)
                                )
                                .frame(width: 110, height: 110)
                                .overlay {
                                    Image("Add Icon")
                                }
                        }
                        Text("Want To Add Something?")
                            .font(.system(size: 25, weight: .bold))
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.white)
                            .padding(20)
                        
                    }
                } else {
                    ScrollView {
                        CartItemCard(image: "Cart Item",
                                 name: "Strawberry Shake",
                                 price: 20)
                        CartItemCard(image: "Cart Item",
                                 name: "Strawberry Shake",
                                 price: 20)
                        CartItemCard(image: "Cart Item",
                                 name: "Strawberry Shake",
                                 price: 20)
                        CartItemCard(image: "Cart Item",
                                 name: "Strawberry Shake",
                                 price: 20)
                    }
                    .padding(.top, 30)
                    .scrollIndicators(.hidden)
                    
                    HStack {
                        Text("Subtotal")
                            .font(.system(size: 25, weight: .medium))
                            .foregroundStyle(.white)
                        Spacer()
                        Text("$32.00")
                            .font(.system(size: 25, weight: .medium))
                            .foregroundStyle(.white)
                    }
                    .padding(.top, 40)
                    
                    HStack {
                        Text("Delivery")
                            .font(.system(size: 25, weight: .medium))
                            .foregroundStyle(.white)
                        Spacer()
                        Text("$3.00")
                            .font(.system(size: 25, weight: .medium))
                            .foregroundStyle(.white)
                    }
                    .padding(.top, 5)
                    
                    Rectangle()
                        .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                        .foregroundColor(.white)
                        .frame(height: 1)
                        .padding(.top, 5)
                    
                    HStack {
                        Text("Total")
                            .font(.system(size: 25, weight: .medium))
                            .foregroundStyle(.white)
                        Spacer()
                        Text("$40.00")
                            .font(.system(size: 25, weight: .medium))
                            .foregroundStyle(.white)
                            .padding(.top, 15)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Checkout")
                            .font(.leagueSpartanMedium(size: 24))
                            .foregroundStyle(.white)
                            .padding()
                            .background(.yellowBase)
                            .cornerRadius(30)
                            .padding()
                    }
                }
            }
            
        }
        .padding(15)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.orangeBase)
    }
}

#Preview {
    CartView(isCartOpen: .constant(false), cartIsEmpty: .constant(false))
}
