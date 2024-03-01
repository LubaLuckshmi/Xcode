//
//  Interactor.swift
//  IosSeminar7
//
//  Created by Admin on 28.02.2024.
//

protocol InteractorProtocol {
    func updateScreen()
}

final class Interactor: InteractorProtocol {
    private let presenter: PresenterProtocol
    
    init(presenter: PresenterProtocol) {
        self.presenter = presenter
    }
    
    func updateScreen() {
        presenter.updateScreen()
    }
    
    func getNumber(number: Int) -> Int {
        var currentNumber = number
        if number > 10 {
            currentNumber *= 3
        } else {
            currentNumber -= 3
        }
        return currentNumber
    }
    
    func getCharacters(currentString: String?, numberOfCharacter: NumberOfStringCharacter) -> [Character] {
        guard let currentString,
              !currentString.isEmpty else {
            return []
        }
        var characters: [Character?] = []
        switch numberOfCharacter {
        case .first: characters.append(currentString.first)
        case .last: characters.append(currentString.last)
        case .all: characters = Array(currentString)
        }
        return characters.compactMap { $0 }
    }
    
    func hasString(stringForCheck: String, checkString: String) {
        if stringForCheck.contains(checkString) {
            presenter.updateScreen()
        }
    }
}
