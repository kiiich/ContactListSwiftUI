//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Николай on 13.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PersonListSimple(persons: Person.getPersons())
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Persons")
                }
            PersonListDetailed(persons: Person.getPersons())
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Information")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
