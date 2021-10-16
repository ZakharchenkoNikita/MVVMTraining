//
//  ContactTableViewController.swift
//  MVVMTraining
//
//  Created by Nikita on 16.10.21.
//

import UIKit

class ContactTableViewController: UITableViewController {

    private var viewModel: TableViewViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel?.numberOfRows ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactTableViewCell

        cell.fullNameLabel.text = "Test"
        cell.phoneNumberLabale.text = "Test"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
