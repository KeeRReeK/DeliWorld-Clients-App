//
//  LiveTrackingView.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 13.08.2025.
//

import SwiftUI

struct LiveTrackingView: View {
    
    var body: some View {
        ZStack {
            Color(.yellowBase)
                .ignoresSafeArea()
                .padding(.bottom, 20)
            VStack {
                HStack {
                    Button {
                        
                    } label: {
                        Text("<")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .foregroundStyle(.orangeBase)
                    }
                    Spacer()
                    Text("Live Tracking")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundStyle(.white)
                    Spacer()
                }
                .padding()
                
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(Color.white)
                    .ignoresSafeArea()
                    .overlay(
                        ScrollView {
                            LiveTrackingViewContent()
                                .padding(.top, 15)
                        }
                    )
            }
        }
    }
}

#Preview {
    LiveTrackingView()
}
