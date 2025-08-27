//
//  SlidebarContent.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 28.07.2025.
//

import SwiftUI

struct ProfileSidebarView: View {
    
    @EnvironmentObject var router: Router
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
            SidebarItemView(navRoute: .profile, image: "Slidebar Profile", text: "My Profile")
                .padding(.top, 50)
            SidebarItemView(navRoute: .deliveryAddress, image: "Slidebar Delivery Adress", text: "Delivery Adress")
            SidebarItemView(navRoute: .settings, image: "Slidebar Settings", text: "Settings")
            SidebarItemView(navRoute: .cart, image: "Slidebar Log Out", text: "Log Out", islogOut: true)
                .padding(.top, 50)
                
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.orangeBase)
    }
    
    var attributedProfileString: AttributedString {
        var string = AttributedString("John Smith" + "\n " + "loremipusum@email.com")
        
        if let temp = string.range(of: "John Smith") {
            string[temp].font = .leagueSpartanMedium(size: 33)
            string[temp].foregroundColor = .white
        }
        
        if let weather = string.range(of: "loremipusum@email.com") {
            string[weather].font = .leagueSpartanMedium(size: 16)
            string[weather].foregroundColor = .yellow2
        }
        
        return string
    }
}

#Preview {
    ProfileSidebarView(isMenuOpen: .constant(false))
}
