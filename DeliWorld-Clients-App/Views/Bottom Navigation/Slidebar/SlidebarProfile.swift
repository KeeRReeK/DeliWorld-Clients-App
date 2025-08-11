//
//  SlidebarContent.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 28.07.2025.
//

import SwiftUI

struct SlidebarProfile: View {
    
    @Binding var isMenuOpen: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("Avatar Image")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Text(attributedProfileString)
            }
            SlidebarItem(image: "Slidebar Profile", text: "My Profile")
                .padding(.top, 50)
            SlidebarItem(image: "Slidebar Delivery Adress", text: "Delivery Adress")
            SlidebarItem(image: "Slidebar Settings", text: "Settings")
            SlidebarItem(image: "Slidebar Log Out", text: "Log Out")
                .padding(.top, 50)
                
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.orangeBase)
    }
    
    var attributedProfileString: AttributedString {
        var string = AttributedString("John Smith" + "\n " + "loremipusum@email.com")
        
        if let temp = string.range(of: "John Smith") {
            string[temp].font = .custom("LeagueSpartan-Medium", size: 33)
            string[temp].foregroundColor = .white
        }
        
        if let weather = string.range(of: "loremipusum@email.com") {
            string[weather].font = .custom("LeagueSpartan-Medium", size: 16)
            string[weather].foregroundColor = .yellow2
        }
        
        return string
    }
}

struct SlidebarItem: View {
    let image: String
    let text: String
    
    var body: some View {
        VStack {
            Button {
                
            } label: {
                HStack(alignment: .center, spacing: 20) {
                    RoundedRectangle(cornerRadius: 15)
                        .frame (width: 40, height: 40)
                        .foregroundStyle(.white)
                        .overlay {
                            Image(image)
                        }
                    Text(text)
                        .font(.custom("LeagueSpartan-Medium", size: 24))
                        .foregroundStyle(.yellow2)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(5)
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 1)
        }
    }
}

#Preview {
    SlidebarProfile(isMenuOpen: .constant(false))
}
