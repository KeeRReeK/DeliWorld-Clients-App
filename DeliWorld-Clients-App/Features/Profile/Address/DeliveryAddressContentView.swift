//
//  DeliveryAdressViewContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 16.08.2025.
//

import SwiftUI

struct DeliveryAddressContentView: View {
    
    @State var isCheckedHome: Bool = false
    @State var isCheckedOffice: Bool = false
    
    var body: some View {
        VStack {
            AdressView(isChecked: $isCheckedHome, image: "house", nameTitleAdress: "My Home")
            AdressView(isChecked: $isCheckedOffice, image: "building", nameTitleAdress: "My Office")
            
            Button {
                
            } label: {
                Text("Add New Adress")
                    .font(.custom("LeagueSpartan-Regular", size: 25))
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.orangeBase)
                    .cornerRadius(25)
            }
            .padding()
        }
    }
}

struct AdressView: View {
    
    @Binding var isChecked: Bool
    var image: String = "house"
    var nameTitleAdress: String = "My Home"
    
    var body: some View {
        VStack {
            Toggle(isOn: $isChecked) {
                HStack {
                    Image(systemName: image)
                        .font(.system(size: 50))
                        .foregroundStyle(.orangeBase)
                    VStack(alignment: .leading) {
                        Text(nameTitleAdress)
                            .font(.system(size: 25))
                            .foregroundStyle(.black)
                        Text("778 Locust View Drive Oakland, CA")
                            .font(.system(size: 15))
                            .foregroundStyle(.black)
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                }
                .padding()
                .frame(width: 350, height: 100)
                .background()
                
            }
            .toggleStyle(.button)
        }
        .shadow(radius: 2)
    }
}


#Preview {
    DeliveryAddressContentView()
}
