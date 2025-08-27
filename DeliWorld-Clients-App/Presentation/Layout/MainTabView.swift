//
//  TabBarView.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 25.07.2025.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var router: Router
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.orangeBase
    }
    
    var body: some View {
        NavigationStack(path: $router.navigationPath) {
            TabView(selection: $router.currentTab) {
                HomeView()
                    .tabItem { Label("", image: "Home Icon") }
                    .tag(0)
                    .padding(.bottom, 1)
                
                MenuView()
                    .tabItem { Label("", image: "Menu Icon") }
                    .tag(1)
                    .padding(.bottom, 1)
                
                FavoritesView()
                    .tabItem { Label("", image: "Favorites Icon") }
                    .tag(2)
                    .padding(.bottom, 1)
                
                OrdersView()
                    .tabItem { Label("", image: "Order Icon") }
                    .tag(3)
                    .padding(.bottom, 1)
                
                HelpView()
                    .tabItem { Label("", image: "Help Icon") }
                    .tag(4)
                    .padding(.bottom, 1)
            }
            .navigationDestination(for: NavigationRoute.self) { route in
                NavigationCoordinator.view(for: route)
            }
        }
        .overlay {
            // Cart Modal
            if router.isCartOpen {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        router.closeCart()
                    }
                
                HStack {
                    CartView(isCartOpen: $router.isCartOpen,
                           cartIsEmpty: $router.cartIsEmpty)
                        .transition(.move(edge: .trailing))
                    Spacer()
                }
            }
            
            // Profile Sidebar
            if router.isMenuOpen {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        router.closeMenu()
                    }
                
                HStack {
                    ProfileSidebarView(isMenuOpen: $router.isMenuOpen)
                        .transition(.move(edge: .leading))
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    MainTabView()
}
