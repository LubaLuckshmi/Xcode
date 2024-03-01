//
//  Presenter.swift
//  IosSeminar7
//
//  Created by Admin on 28.02.2024.
//

protocol PresenterProtocol {
    func updateScreen()
}

final class Presenter: PresenterProtocol {
    weak var viewController: ViewControllerProtocol?
    
    func updateScreen() {
        viewController?.updateScreen()
    }
}
