//
//  SlidebarContent.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 28.07.2025.
//

import SwiftUI

struct ProfileSidebarView: View {
    
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
            SidebarItemView(image: "Slidebar Profile", text: "My Profile")
                .padding(.top, 50)
            SidebarItemView(image: "Slidebar Delivery Adress", text: "Delivery Adress")
            SidebarItemView(image: "Slidebar Settings", text: "Settings")
            SidebarItemView(image: "Slidebar Log Out", text: "Log Out")
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

#Preview {
    ProfileSidebarView(isMenuOpen: .constant(false))
}
