//
//  IntetactorTests.swift
//  IosSeminar7Tests
//
//  Created by Admin on 28.02.2024.
//

import XCTest
@testable import IosSeminar7

final class InteractorTests: XCTestCase {
    
    private var interactor: Interactor!
    private var presenter: PresenterSpy!
    
    override func setUp() {
        super.setUp()
        presenter = PresenterSpy()
        interactor = interactor(presenter: presenter)
    }
    
    override func tearDown() {
        presenter = nil
        interactor = nil
        super.tearDown()
    }
    
    func testUpdateScreen() {
        interactor.updateScreen()
        
        XCTAssertTrue(presenter.isUpdateScreenWasCalled, "Метод не вызван")
        
    }
    
    func testGetNumberMoreThan10() {
        let number = interactor.getNumber(number: 15)
        
        XCTAssertEqual(number, 45, "Неверный результат")
    }
    
    func testGetNumberLessThan10() {
        let number = interactor.getNumber(number: 9)
        
        XCTAssertEqual(number, 6, "Неверный результат")
    }
    
    func testGetNumber10() {
        let number = interactor.getNumber(number: 10)
        
        XCTAssertEqual(number, 7, "Неверный результат")
    }
    
    func testGetCharacterWithFirst() {
        let characters = interactor.getCharacters(currentString: "Hello!", numberOfCharacter: .first)
        XCTAssertEqual(characters, ["H"])
    }
    func testGetCharacterWithLast() {
        let characters = interactor.getCharacters(currentString: "Hello!", numberOfCharacter: .last)
        XCTAssertEqual(characters, ["!"])
    }
    func testGetCharacterWithAll() {
        let characters = interactor.getCharacters(currentString: "Hello!", numberOfCharacter: .all)
        XCTAssertEqual(characters, ["H", "e", "l", "l", "o", "!"])
    }
    func testGetCharacterWithEmptyString() {
        let characters = interactor.getCharacters(currentString: "", numberOfCharacter: .first)
        XCTAssertEqual(characters, [])
    }
    func testGetCharacterWithEmptyString() {
        let characters = interactor.getCharacters(currentString: nil, numberOfCharacter: .first)
        XCTAssertEqual(characters, [])
    }
    
    
    func testHasStringWithString() {
        interactor.hasString(stringForCheck: "Hello!", checkString: "ll")
        
        XCTAssertTrue(presenter.isUpdateScreenWasCalled, "Метод не вызван")
    }
    
    func testHasStringWithoutString() {
        interactor.hasString(stringForCheck: "Hello!", checkString: "Friend")
        
        XCTAssertFalse(presenter.isUpdateScreenWasCalled, "Метод вызван")
    }
}
