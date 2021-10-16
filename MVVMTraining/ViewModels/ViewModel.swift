//
//  ViewModel.swift
//  MVVMTraining
//
//  Created by Nikita on 16.10.21.
//

import Foundation

class ViewModel: TableViewViewModelProtocol {
    
    var contacts = Contacts.getContacts()
    
    var numberOfRows: Int {
        contacts.count
    }
}
