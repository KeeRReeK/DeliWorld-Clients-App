//
//  DatePickerField.swift
//  DeliWorldClients
//
//  Created by KeeR ReeK on 20.08.2025.
//

import SwiftUI

struct DatePickerField: View {
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
    DatePickerField(title: "Hello date", date: .constant(Date()))
}
