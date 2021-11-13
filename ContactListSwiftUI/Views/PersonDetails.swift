//
//  PersonDetails.swift
//  ContactListSwiftUI
//
//  Created by Николай on 13.11.2021.
//

import SwiftUI

struct PersonDetails: View {
    
    let person: Person
    
    var body: some View {
        List {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 150, height: 150, alignment: .center)
            HStack {
                Image(systemName: "mail")
                Text("\(person.email)")
            }
            HStack {
                Image(systemName: "phone")
                Text("\(person.phone)")
            }
        }
    }
}

struct PersonDetails_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetails(person: Person.getPersons().first!)
    }
}
