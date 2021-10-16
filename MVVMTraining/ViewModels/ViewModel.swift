//
//  ViewModel.swift
//  MVVMTraining
//
//  Created by Nikita on 16.10.21.
//

import Foundation

class ViewModel: TableViewViewModelProtocol {
    
    var contacts = Contacts.getContacts()
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelProtocol? {
        let contact = contacts[indexPath.row]
        return TableViewCellViewModel(contact: contact)
    }
    
    func numberOfRows() -> Int {
        contacts.count
    }
}
