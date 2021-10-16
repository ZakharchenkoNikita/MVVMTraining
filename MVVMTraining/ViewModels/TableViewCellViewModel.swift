//
//  TableViewCellViewModel.swift
//  MVVMTraining
//
//  Created by Nikita on 16.10.21.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelProtocol {
    
    private var contact: Contacts
    
    var fullName: String {
        contact.fullName
    }
    
    var phonenumber: String {
        contact.phoneNumber
    }
    
    init(contact: Contacts) {
        self.contact = contact
    }
}
