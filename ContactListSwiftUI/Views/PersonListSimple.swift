//
//  PersonListSimple.swift
//  ContactListSwiftUI
//
//  Created by Николай on 13.11.2021.
//

import SwiftUI

struct PersonListSimple: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: PersonDetails(person: person)) {
                    Text("\(person.fullName())")
                }
            }
            .navigationTitle("Contact list")
        }
    }
}

struct PersonListSimple_Previews: PreviewProvider {
    static var previews: some View {
        PersonListSimple(persons: Person.getPersons())
    }
}
