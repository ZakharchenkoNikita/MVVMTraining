//
//  DetailViewModel.swift
//  MVVMTraining
//
//  Created by Nikita on 16.10.21.
//

import Foundation

class DetailViewModel: DetailViewModelProtocol {
    
    private var contact: Contacts
    
    var fullName: String {
        contact.fullName
    }
    
    var phoneNumber: String {
        contact.phoneNumber
    }
    
    init(contact: Contacts) {
        self.contact = contact
    }
}
