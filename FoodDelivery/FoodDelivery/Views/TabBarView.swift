//
//  TabBarView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 25.07.2025.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.orangeBase
        UITabBar.appearance().unselectedItemTintColor = .white
    }
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            LogInView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            
            SignUpView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag(1)
        }
    }
}

#Preview {
    TabBarView()
}
