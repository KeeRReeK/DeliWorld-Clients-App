//
//  OrderItemCompactView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 12.08.2025.
//

import SwiftUI

struct OrderItemView: View {
    
    @Binding var isExpanded: Bool
    @Binding var isActive: Bool
    
    let orderItems = ["hello", "how are you?", "where are you from?"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // Header
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Order #4932")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text("29.08.2023")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Text("$45.00")
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.semibold)
                    .foregroundColor(.orangeBase)
            }
            .padding(.bottom, 8)
            
            // Expandable button
            Button(action: {
                withAnimation(.spring()) {
                    isExpanded.toggle()
                }
            }) {
                HStack {
                    Text("2 items")
                        .font(.callout)
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 8)
            }
            .buttonStyle(PlainButtonStyle())
            
            // Expanded details
            if isExpanded {
                VStack(alignment: .leading, spacing: 8) {
                    Divider()
                    
                    HStack {
                        Text("Capuccino")
                        Spacer()
                        Text("$20.00")
                    }
                    
                    HStack {
                        Text("Cake")
                        Spacer()
                        Text("$25.00")
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Delivery")
                        Spacer()
                        Text("$5.00")
                    }
                    
                    if isActive {
                        HStack {
                            Button {
                                
                            } label: {
                                Text("Cancel order")
                                    .foregroundStyle(.white)
                                    .padding(7)
                                    .background(.orangeBase)
                                    .cornerRadius(25)
                            }
                            Spacer()
                            Button {
                                
                            } label: {
                                Text("Track order")
                                    .foregroundStyle(.orangeBase)
                                    .padding(7)
                                    .background(.orange2)
                                    .cornerRadius(25)
                            }
                        }
                        .padding(.top)
                    }
                }
                .font(.body)
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    OrderItemView(isExpanded: .constant(true), isActive: .constant(false))
}
