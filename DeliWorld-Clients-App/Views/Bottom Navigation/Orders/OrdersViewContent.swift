//
//  OrdersViewContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 12.08.2025.
//

import SwiftUI

struct OrdersViewContent: View {
    
    @State var isExpanded: Bool = false
    @State var isActive: Bool = true
    
    @State private var selectedButton: Int? = 1
    let arrayButtons = ["Active", "Completed", "Cancelled"]
    
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                ForEach(1...3, id: \.self) { index in
                    ScreenSwitchButtonView(selectedButton: $selectedButton, index: index, name: arrayButtons[index - 1])
                }
            }
            
            Rectangle()
                .foregroundColor(.orange)
                .frame(height: 1)
                .padding(.vertical)
            
            ScrollView {
                VStack {
                    OrderItemView(isExpanded: $isExpanded, isActive: $isActive)
                    OrderItemView(isExpanded: $isExpanded, isActive: $isActive)
                    OrderItemView(isExpanded: $isExpanded, isActive: $isActive)
                }
            }
        }
    }
}

#Preview {
    OrdersViewContent()
}
