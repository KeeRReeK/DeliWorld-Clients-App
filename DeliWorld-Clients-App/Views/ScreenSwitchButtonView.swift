//
//  ScreenSwitchButtonView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 14.08.2025.
//

import SwiftUI

struct ScreenSwitchButtonView: View {
    @Binding var selectedButton: Int?
    var index: Int
    var name: String
    
    var body: some View {
        
        Button(action: {
            selectedButton = index
        }) {
            Text(name)
                .font(.custom("LeagueSpartan-Medium", size: 23))
                .padding(12)
                .background(selectedButton == index ? Color.orangeBase : Color.orange2)
                .foregroundColor(selectedButton == index ? .white : .black)
                .cornerRadius(30)
        }
        .disabled(selectedButton == index)
    }
}

#Preview {
    ScreenSwitchButtonView(selectedButton: .constant(1), index: 0, name: "Hello")
}
