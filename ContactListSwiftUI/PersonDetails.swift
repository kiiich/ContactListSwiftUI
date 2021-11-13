//
//  PersonDetails.swift
//  ContactListSwiftUI
//
//  Created by Николай on 13.11.2021.
//

import SwiftUI

struct PersonDetails: View {
    
    @Binding var isPresented: Bool
    
    let person: Person
    
    var body: some View {
        List {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 150, height: 150)
            HStack {
                Image(systemName: "mail")
                Text("\(person.email)")
            }
            HStack {
                Image(systemName: "phone")
                Text("\(person.phone)")
            }
            Button("Done") {
                isPresented.toggle()
            }
        }
    }
}

struct PersonDetails_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetails(
            isPresented: .constant(true),
            person: Person.getPersons().first!
        )
    }
}
