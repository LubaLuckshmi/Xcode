//
//  Assembly.swift
//  IosSeminar7
//
//  Created by Admin on 28.02.2024.
//

import UIKit

final class Assembly {
    static func build() -> UIViewController {
        let presenter = Presenter()
        let interactor = Interactor(presenter: presenter)
        let viewController = ViewController(interactor: interactor)
        
        presenter.viewController = viewController
        
        return viewController
    }
}
