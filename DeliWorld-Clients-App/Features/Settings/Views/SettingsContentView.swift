//
//  SettingsViewContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 19.08.2025.
//

import SwiftUI

struct SettingsContentView: View {
    
    var body: some View {
        VStack {
            Toggle("Notifications of promotions and offers", isOn: .constant(true))
            
            Rectangle()
                .foregroundColor(.orange)
                .frame(height: 1)
                .padding(.vertical)
            
            Button {
                
            } label: {
                Text("Delete Account")
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(25)
            }
        }
        .padding()
    }
}

#Preview {
    SettingsContentView()
}
