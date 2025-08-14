//
//  OrderCancellationReasonSelectionViewContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 14.08.2025.
//

import SwiftUI

struct OrderCancellationReasonSelectionViewContent: View {
    
    @State var selectedReason: Bool
    @State var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque congue lorem, vel tincidunt tortor.")
                .font(.system(size: 14))
            
            Rectangle()
                .foregroundColor(.orangeBase)
                .frame(height: 1)
                .padding(.vertical)
            
                Toggle("The courier was late", isOn: $selectedReason)
            
            Rectangle()
                .foregroundColor(.orangeBase)
                .frame(height: 1)
                .padding(.vertical)
            
            Toggle("The courier did not have change", isOn: $selectedReason)
            
            Rectangle()
                .foregroundColor(.orangeBase)
                .frame(height: 1)
                .padding(.vertical)
            
            Toggle("The courier was rude", isOn: $selectedReason)
            
            Rectangle()
                .foregroundColor(.orangeBase)
                .frame(height: 1)
                .padding(.vertical)
            
            TextEditor(text: $text)
                .frame(height: 200)
                .scrollContentBackground(.hidden)
                .background(Color.yellow2)
                .cornerRadius(25)
            
            Spacer()
            
            HStack {
                Button {
                    
                } label: {
                    Text("Sumbit")
                        .font(.custom("LeagueSpartan-Bold", size: 25))
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal, 50)
                }
                .background(.orangeBase)
                .cornerRadius(25)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    OrderCancellationReasonSelectionViewContent(selectedReason: true, text: "Test")
}
