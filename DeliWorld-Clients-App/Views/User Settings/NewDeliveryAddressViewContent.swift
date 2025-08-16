//
//  NewAddressViewContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 16.08.2025.
//

import SwiftUI

struct NewDeliveryAddressViewContent: View {
    
    @State var name: String = ""
    @State var address: String = ""
    @State var image: String = "house"
    @State var images = ["house", "building", "dollarsign.bank.building"]
    
    var body: some View {
        VStack {
            
            Image(systemName: image)
                .font(.system(size: 50))
                .foregroundStyle(.orangeBase)
            
            Picker("Image", selection: $image) {
                ForEach(images, id: \.self) { image in
                        Image(systemName: image)
                }
            }
            
            VStack(alignment: .leading, spacing: 20) {
                
                LabeledInputField(
                    title: "Name",
                    placeholder: "My House",
                    text: $name
                )
                
                LabeledInputField(
                    title: "Email",
                    placeholder: "778 Locust View Drive Oaklanda, CA",
                    text: $address
                )
                
                
            }
            
            Button {
                
            } label: {
                Text("Update Profile")
                    .font(.custom("LeagueSpartan-SemiBold", size: 20))
            }
            .padding()
            .foregroundStyle(.white)
            .background(Color.orangeBase)
            .cornerRadius(25)
            .padding(30)
            
            Spacer()
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    NewDeliveryAddressViewContent()
}
