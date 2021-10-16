//
//  ViewModel.swift
//  MVVMTraining
//
//  Created by Nikita on 16.10.21.
//

import Foundation

class ViewModel: TableViewViewModelProtocol {
    
    private var selectedIndexPath: IndexPath?
    
    var contacts = Contacts.getContacts()
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelProtocol? {
        let contact = contacts[indexPath.row]
        return TableViewCellViewModel(contact: contact)
    }
    
    func numberOfRows() -> Int {
        contacts.count
    }
    
    func viewModelForSelectedRow() -> DetailViewModelProtocol? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(contact: contacts[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        selectedIndexPath = indexPath
    }
}
