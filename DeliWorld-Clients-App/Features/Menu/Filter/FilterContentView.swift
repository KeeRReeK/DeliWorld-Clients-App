//
//  FilterViewContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 09.08.2025.
//

import SwiftUI

struct FilterContentView: View {
    
    @State var sliderValue: Float = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Restourant")
                .font(.system(size: 25, weight: .bold, design: .default))
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    RestaurantFilter()
                    RestaurantFilter()
                    RestaurantFilter()
                    RestaurantFilter()
                    RestaurantFilter()
                    RestaurantFilter()
                    RestaurantFilter()
                    RestaurantFilter()
                }
            }
            
            Rectangle()
                .foregroundColor(.orangeBase)
                .frame(height: 1)
                .padding(.vertical)
            
            Text("Category")
                .font(.system(size: 25, weight: .bold, design: .default))
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    CategoryFilter()
                    CategoryFilter()
                    CategoryFilter()
                    CategoryFilter()
                    CategoryFilter()
                    CategoryFilter()
                    CategoryFilter()
                    CategoryFilter()
                }
            }
            
            Rectangle()
                .foregroundColor(.orangeBase)
                .frame(height: 1)
                .padding(.vertical)
            
            Text("Price \(sliderValue, specifier: "%2.f")")
                .font(.system(size: 25, weight: .bold, design: .default))
            
            Slider(value: $sliderValue, in: 0...1000, step: 1.0)
                .tint(.orangeBase)
            
            Spacer()
            
            HStack {
                Button {
                    
                } label: {
                    Text("Apply")
                        .font(.custom("LeagueSpartan-Bold", size: 25))
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal, 50)
                }
                .background(.orangeBase)
                .cornerRadius(25)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            
            Spacer()
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    FilterContentView()
}
