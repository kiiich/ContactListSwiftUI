//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Николай on 13.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabViewLists()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabViewLists: View {
    var body: some View {
        TabView {
            PersonListSimple(persons: Person.getPersons())
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Persons")
                }
                .navigationTitle("Contact list")
            PersonListDetailed(persons: Person.getPersons())
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Information")
                }
                .navigationTitle("Information")
        }
    }
}
