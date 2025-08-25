//
//  SidebarItemView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 20.08.2025.
//

import SwiftUI

struct SidebarItemView: View {
    
    @EnvironmentObject var router: Router
    let navRoute: NavigationRoute
    let image: String
    let text: String
    var islogOut: Bool = false
    
    var body: some View {
        VStack {
            Button {
                if islogOut == true {
                    router.isAlertLogOutPresented = true
                } else {
                    router.navigate(to: navRoute)
                }
            } label: {
                HStack(alignment: .center, spacing: 20) {
                    RoundedRectangle(cornerRadius: 15)
                        .frame (width: 40, height: 40)
                        .foregroundStyle(.white)
                        .overlay {
                            Image(image)
                        }
                    Text(text)
                        .font(.leagueSpartanMedium(size: 24))
                        .foregroundStyle(.yellow2)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(5)
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 1)
        }
        .alert("Are you sure you want to leave?", isPresented: $router.isAlertLogOutPresented) {
            Button(role: .destructive) {
                
            } label: {
                Text("Confirm")
            }
        } message: {
            Text("Leave account")
        }
    }
}

#Preview {
    SidebarItemView(navRoute: .cart, image: "None", text: "None")
}
