//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Николай on 13.11.2021.
//

import Foundation

struct Person: Identifiable {
    
    var id: Int
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    func fullName() -> String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
    
        let dataManager = DataManager.shared
        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        
        var result: [Person] = []
        
        for (index, name) in names.enumerated() {
            
            let newPerson = Person(
                id: index,
                name: name,
                surname: surnames[index],
                email: dataManager.email(from: name, and: surnames[index]),
                phone: dataManager.randomPhoneNumber()
            )
            
            result.append(newPerson)
        }
    
        return result
        
    }
    
}
