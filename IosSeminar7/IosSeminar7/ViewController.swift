//
//  ViewController.swift
//  IosSeminar7
//
//  Created by Admin on 28.02.2024.
//

import UIKit

protocol ViewControllerProtocol: AnyObject {
    func updateScreen()
}

final class ViewController: UIViewController {
    
    private let interactor: InteractorProtocol
    init(interactor: InteractorProtocol) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: ViewControllerProtocol {
    func updateScreen() {
        interactor.updateScreen()
    }
}
