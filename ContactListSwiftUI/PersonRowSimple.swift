//
//  PersonRowSimple.swift
//  ContactListSwiftUI
//
//  Created by Николай on 13.11.2021.
//

import SwiftUI

struct PersonRowSimple: View {
   
    @State private var isPresented = false
    
    let person: Person

    var body: some View {
        Button(action: { isPresented.toggle() }) {
            Text("\(person.fullName())")
        }.sheet(isPresented: $isPresented) {
            PersonDetails(
                isPresented: $isPresented,
                person: person)
        }
    }
}

struct PersonRowSimple_Previews: PreviewProvider {
    static var previews: some View {
        PersonRowSimple(person: Person.getPersons().first!)
    }
}
