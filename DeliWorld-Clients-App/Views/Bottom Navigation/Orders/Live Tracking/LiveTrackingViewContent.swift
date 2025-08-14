//
//  LiveTrackingViewContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 13.08.2025.
//

import SwiftUI
import MapKit

struct LiveTrackingViewContent: View {
    var body: some View {
        VStack {
            Text("Order #2526")
                .font(.system(size: 20))
                .padding()
                .background(Color.yellow2)
                .cornerRadius(25)
            Map()
                .frame(width: 320, height: 450)
                .cornerRadius(25)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(stops: [
                            .init(color: .redGradient, location: 0.0),
                            .init(color: .orangeGradient, location: 0.3),
                            .init(color: .yellowGradient, location: 0.7),
                            .init(color: .greenGradient, location: 1.0)
                        ]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(width: 320, height: 25)
                .padding()
                .overlay {
                    Circle()
                        .fill(Color.white)
                        .overlay(
                            Circle()
                                .stroke(Color.orangeBase, lineWidth: 3)
                        )
                        .frame(width: 40, height: 40)
                        .overlay {
                            Image("Deliver Boy Icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 27, height: 27)
                        }
                }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("01 Sep 24")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                    Text("06:20 PM")
                        .font(.system(size: 16))
                        .fontWeight(.regular)
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("01 Sep 24")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                    Text("08:20 PM")
                        .font(.system(size: 16))
                        .fontWeight(.regular)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    LiveTrackingViewContent()
}
