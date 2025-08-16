//
//  ProfileViewContent.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 16.08.2025.
//

import SwiftUI

struct ProfileViewContent: View {
    
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
            
            VStack(alignment: .leading, spacing: 20) {
                LabeledInputField(
                    title: "Full Name",
                    placeholder: "Your name",
                    text: $name
                )
                
                LabeledDatePicker(
                    title: "Date of Birth",
                    date: $dateOfBirth
                )
                
                LabeledInputField(
                    title: "Email",
                    placeholder: "Your email",
                    text: $email,
                    keyboardType: .emailAddress
                )
                
                LabeledInputField(
                    title: "Phone Number",
                    placeholder: "Your phone",
                    text: $phone,
                    keyboardType: .phonePad
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

struct LabeledInputField: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.system(size: 20))
                .fontWeight(.bold)
            
            TextField(placeholder, text: $text)
                .keyboardType(keyboardType)
                .padding()
                .background(Color.yellow2)
                .cornerRadius(25)
        }
    }
}

struct LabeledDatePicker: View {
    let title: String
    @Binding var date: Date
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.system(size: 20))
                .fontWeight(.bold)
            
            DatePicker("Your birthday", selection: $date, displayedComponents: [.date])
                .padding()
                .background(Color.yellow2)
                .cornerRadius(25)
        }
    }
}

#Preview {
    ProfileViewContent()
}
