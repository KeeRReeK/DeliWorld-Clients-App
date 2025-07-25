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
    }
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("", image: "Home Icon")
                }
                .tag(0)
            
            MenuView()
                .tabItem {
                    Label("", image: "Menu Icon")
                }
                .tag(1)
            
            FavoritesView()
                .tabItem {
                    Label("", image: "Favorites Icon")
                }
                .tag(2)
            
            OrdersView()
                .tabItem {
                    Label("", image: "Order Icon")
                }
                .tag(3)
            
            HelpView()
                .tabItem {
                    Label("", image: "Help Icon")
                }
                .tag(4)
        }
    }
}

#Preview {
    TabBarView()
}
