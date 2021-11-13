//
//  DataManager.swift
//  ContactListSwiftUI
//
//  Created by Николай on 13.11.2021.
//

import Foundation

final class DataManager {
    
    static let shared = DataManager()
    
    var surnames: [String] {
        [
            "Lennon",
            "Waits",
            "Marley",
            "Mercury",
            "Osbourn",
            "Mccartney"
        ]
    }
    
    var names: [String] {
        [
            "John",
            "Tom",
            "Bob",
            "Freddy",
            "Ozzy",
            "Paul"
        ]
    }
    
    func email(from name: String, and surname: String) -> String {
        "\(name.lowercased()).\(surname.lowercased())@gmail.com"
    }
    
    func randomPhoneNumber() -> String {
        String(Int.random(in: 9000000000...9999999999))
    }
    
    private init() { }

}
