//
//  PersonListDetailed.swift
//  ContactListSwiftUI
//
//  Created by Николай on 13.11.2021.
//

import SwiftUI

struct PersonListDetailed: View {
    
    let persons: [Person]
    
    var body: some View {
        List(persons){person in
            PersonData(person: person)
        }
    }
}

struct PersonListDetailed_Previews: PreviewProvider {
    static var previews: some View {
        PersonListDetailed(persons: Person.getPersons())
    }
}

struct PersonData: View {
    
    let person: Person
    
    var body: some View {
        Section(person.fullName()) {
            HStack {
                Image(systemName: "phone")
                Text(person.phone)
            }
            HStack {
                Image(systemName: "mail")
                Text(person.email)
            }
        }
    }
}
