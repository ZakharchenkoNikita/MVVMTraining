//
//  DetailViewController.swift
//  MVVMTraining
//
//  Created by Nikita on 16.10.21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    var viewModel: DetailViewModelProtocol?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        title = viewModel.fullName
        phoneNumberLabel.text = viewModel.phoneNumber
    }
}
