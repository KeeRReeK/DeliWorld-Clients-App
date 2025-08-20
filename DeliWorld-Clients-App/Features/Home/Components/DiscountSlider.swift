//
//  SliderDiscountView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 28.07.2025.
//

import SwiftUI

struct DiscountSlider: View {
    
    @State private var currentIndex = 0
    @State private var timer: Timer?
    
    let imageNames = ["Slider Discount Example", "Slider Discount Example", "Slider Discount Example"]
    
    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    Image(imageNames[index])
                        .resizable()
                        .scaledToFit()
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .onAppear {
                startAutoSlide()
            }
            .onDisappear {
                stopAutoSlide()
            }
        }
    }
    
    private func startAutoSlide() {
        timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { _ in
            withAnimation(.easeInOut(duration: 0.5)) {
                currentIndex = (currentIndex + 1) % imageNames.count
            }
        }
    }
    
    private func stopAutoSlide() {
        timer?.invalidate()
        timer = nil
    }
}

#Preview {
    DiscountSlider()
}
