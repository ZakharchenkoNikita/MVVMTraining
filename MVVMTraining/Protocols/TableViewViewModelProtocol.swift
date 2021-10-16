//
//  ViewModelProtocol.swift
//  MVVMTraining
//
//  Created by Nikita on 16.10.21.
//

import Foundation

protocol TableViewViewModelProtocol {
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelProtocol?
}
