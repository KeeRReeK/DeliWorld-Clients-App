//
//  UserInfoForm.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 20.08.2025.
//

import SwiftUI

struct UserInfoForm: View {
    @Binding var name: String
    @Binding var email: String
    @Binding var phone: String
    @Binding var dateOfBirth: Date

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            InputField(
                title: "Full Name",
                placeholder: "Your name",
                text: $name
            )

            DatePickerField(
                title: "Date of Birth",
                date: $dateOfBirth
            )

            InputField(
                title: "Email",
                placeholder: "Your email",
                text: $email,
                keyboardType: .emailAddress
            )

            InputField(
                title: "Phone Number",
                placeholder: "Your phone",
                text: $phone,
                keyboardType: .phonePad
            )
        }
    }
}

#Preview {
    UserInfoForm(name: .constant("Hello Name"), email: .constant("Hello Email"), phone: .constant("Hello Phone"), dateOfBirth: .constant(Date()))
}
