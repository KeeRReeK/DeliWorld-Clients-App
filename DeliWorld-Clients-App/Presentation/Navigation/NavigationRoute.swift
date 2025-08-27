//
//  NavigationRoute.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 22.08.2025.
//

import SwiftUI

enum NavigationRoute: Hashable {
    
    // Authentication
    case login
    case signUp
    case setPassword
    
    // Main Flow
    case home
    case menu
    case favorites
    case orders
    case help
    
    // Menu Flow
    case dishDetail
    case filter
    
    // Cart & Orders
    case cart
    case checkout
    case orderConfirmation
    case liveTracking
    case orderCancellation
    case cancellationConfirmed
    
    // Profile Flow
    case profile
    case deliveryAddress
    case newAddress
    case paymentMethod
    case settings
    
    //Lists
//    case bestSellerList
    case homeItemList(title: String, subtitle: String)
    
    // Onboarding
    case onboardingOrder
    case onboardingDelivery
    case onboardingPayment
    
    // Launch
    case launchFirst
    case launchWelcome
}
