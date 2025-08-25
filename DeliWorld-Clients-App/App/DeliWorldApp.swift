//
//  FoodDeliveryApp.swift
//  FoodDelivery
//
//  Created by KeeR ReeK on 21.07.2025.
//

import SwiftUI

@main
struct DeliWorldApp: App {
    
    @StateObject private var router = Router()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(router)
        }
    }
}
