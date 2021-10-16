//
//  ContactTableViewCell.swift
//  MVVMTraining
//
//  Created by Nikita on 16.10.21.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabale: UILabel!
    
    weak var viewModel: TableViewCellViewModelProtocol? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            fullNameLabel.text = viewModel.fullName
            phoneNumberLabale.text = viewModel.phonenumber
        }
    }
}
