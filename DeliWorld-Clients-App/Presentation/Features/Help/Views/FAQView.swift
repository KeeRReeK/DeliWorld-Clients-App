//
//  FAQView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 14.08.2025.
//

import SwiftUI

struct FAQView: View {
    
    @State var isExpanded: Bool = false
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    FAQItemView(isExpanded: $isExpanded)
                    FAQItemView(isExpanded: $isExpanded)
                    FAQItemView(isExpanded: $isExpanded)
                }
            }
        }
    }
}

#Preview {
    FAQView()
}
