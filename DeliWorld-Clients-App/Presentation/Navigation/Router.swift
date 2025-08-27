//
//  Router.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 22.08.2025.
//

import SwiftUI

@MainActor
class Router: ObservableObject {
    @Published var navigationPath = NavigationPath()
    @Published var currentTab: Int = 0
    @Published var isAlertLogOutPresented: Bool = false
    @Published var isCartOpen = false
    @Published var isMenuOpen = false
    @Published var cartIsEmpty = true
    
    // MARK: - Navigation Methods
    func navigate(to route: NavigationRoute) {
        navigationPath.append(route)
    }
    
    func navigateBack() {
        guard !navigationPath.isEmpty else { return }
        navigationPath.removeLast()
    }
    
    func navigateToRoot() {
        navigationPath = NavigationPath()
    }
    
    func navigateBackTo(route: NavigationRoute) {
        navigationPath = NavigationPath()
        navigationPath.append(route)
    }
    
    // MARK: - Tab Navigation
    func switchToTab(_ tab: Int) {
        currentTab = tab
        navigationPath = NavigationPath()
    }
    
    // MARK: - Modal Navigation
    func openCart() {
        isCartOpen = true
    }
    
    func closeCart() {
        isCartOpen = false
    }
    
    func toggleMenu() {
        isMenuOpen.toggle()
    }
    
    func closeMenu() {
        isMenuOpen = false
    }
    
    // MARK: - Deep Link Navigation
//    func handleDeepLink(_ url: URL) {
//        let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
//        guard let path = components?.path else { return }
//        
//        switch path {
//        case "/dish":
//            if let dishId = components?.queryItems?.first(where: { $0.name == "id" })?.value {
//            }
//        case "/order":
//            if let orderId = components?.queryItems?.first(where: { $0.name == "id" })?.value {
//                navigate(to: .liveTracking)
//            }
//        default:
//            break
//        }
//    }
}
