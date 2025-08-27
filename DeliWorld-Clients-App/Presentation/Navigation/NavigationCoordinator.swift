//
//  NavigationCoordinator.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 22.08.2025.
//

import SwiftUI

struct NavigationCoordinator {
    @ViewBuilder
    static func view(for route: NavigationRoute) -> some View {
        switch route {
            // Authentication
        case .login:
            LoginView()
        case .signUp:
            SignUpView()
        case .setPassword:
            SetPasswordView()
            
            // Main Flow (handled by TabView)
        case .home:
            HomeView()
        case .menu:
            MenuView()
        case .favorites:
            FavoritesView()
        case .orders:
            OrdersView()
        case .help:
            HelpView()
            
            // Menu Flow
        case .dishDetail:
            DishDetailView()
        case .filter:
            FilterView()
            
            // Cart & Orders
            // TODO: Solve this problem
        case .cart:
            EmptyView() // Cart is handled as modal
        case .checkout:
            CheckoutView()
        case .orderConfirmation:
            OrderConfirmationView()
        case .liveTracking:
            LiveTrackingView()
        case .orderCancellation:
            CancellationReasonView()
        case .cancellationConfirmed:
            CancellationConfirmedView()
            
            // Profile Flow
        case .profile:
            ProfileView()
        case .deliveryAddress:
            DeliveryAddressView()
        case .newAddress:
            NewAddressView()
        case .paymentMethod:
            PaymentMethodView()
        case .settings:
            SettingsView()
            
            // Lists
            //        case .bestSellerList:
            //            BestSellerList()
        case .homeItemList(let title, let subtitle):
            ItemHomeList(title: title, subtitle: subtitle)
            
            // Onboarding
        case .onboardingOrder:
            OnboardingOrderView()
        case .onboardingDelivery:
            OnboardingDeliveryView()
        case .onboardingPayment:
            OnboardingPaymentView()
            
            // Launch
        case .launchFirst:
            LaunchFirstScreenView()
        case .launchWelcome:
            LaunchWelcomeScreenView()
        }
    }
}
