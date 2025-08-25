//
//  ContentView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 23.08.2025.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var router: Router
    var isAuthenticated = true

    var body: some View {
        NavigationStack(path: $router.navigationPath) {
            Group {
                if isAuthenticated {
                    MainTabView()
                } else {
                    OnboardingOrderView()
                }
            }
            .navigationDestination(for: NavigationRoute.self) { route in
                NavigationCoordinator.view(for: route)
            }
        }
    }
}

#Preview {
    ContentView()
}
