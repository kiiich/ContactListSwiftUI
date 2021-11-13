//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Николай on 13.11.2021.
//

import Foundation

class Person: NSObject, Identifiable {
    
    var id: Int
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    init(id: Int, name: String, surname: String, email: String, phone: String) {
        self.id = id
        self.name = name
        self.surname = surname
        self.email = email
        self.phone = phone
    }
    
    func fullName() -> String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
    
        let names = [
            "John",
            "Tom",
            "Bob",
            "Freddy",
            "Ozzy",
            "Paul"
        ].shuffled()
        
        let surnames = [
            "Lennon",
            "Waits",
            "Marley",
            "Mercury",
            "Osbourn",
            "Mccartney"
        ].shuffled()
        
        var result: [Person] = []
        
        for (index, name) in names.enumerated() {
            
            let newPerson = Person(
                id: index,
                name: name,
                surname: surnames[index],
                email: email(from: name, and: surnames[index]),
                phone: randomPhoneNumber()
            )
            
            result.append(newPerson)
        }
    
        return result
        
    }
    
    static private func email(from name: String, and surname: String) -> String {
        "\(name.lowercased()).\(surname.lowercased())@gmail.com"
    }
    
    static private func randomPhoneNumber() -> String {
        String(Int.random(in: 9000000000...9999999999))
    }
    
}
