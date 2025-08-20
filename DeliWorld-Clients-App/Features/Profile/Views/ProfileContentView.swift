//
//  ProfileViewContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 16.08.2025.
//

import SwiftUI

struct ProfileContentView: View {
    
    @State var name: String = ""
    @State var email: String = ""
    @State var phone: String = ""
    @State var dateOfBirth: Date = Date()
    
    var body: some View {
        VStack {
            Image("Avatar Image")
                .overlay {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 35, height: 35)
                                .foregroundStyle(Color.orangeBase)
                                .overlay {
                                    Image(systemName: "pencil")
                                        .foregroundStyle(Color.white)
                                }
                        }
                    }
                    
                }
            
            UserInfoForm(
                name: $name,
                email: $email,
                phone: $phone,
                dateOfBirth: $dateOfBirth
            )
            
            Button {
                
            } label: {
                Text("Update Profile")
                    .font(.leagueSpartanSemiBold(size: 20))
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
    ProfileContentView()
}
