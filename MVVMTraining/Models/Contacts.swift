//
//  Contacts.swift
//  MVVMTraining
//
//  Created by Nikita on 16.10.21.
//

import Foundation

struct Contacts {
    let name: String
    let surname: String
    let phoneNumber: String
}

extension Contacts {
    static func getContacts() -> [Contacts] {
        [
            Contacts(name: "Nikita", surname: "Zakharchenko", phoneNumber: "123"),
            Contacts(name: "Mike", surname: "Anosov", phoneNumber: "321")
        ]
    }
}
