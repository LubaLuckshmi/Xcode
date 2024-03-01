//
//  PresenterSpy.swift
//  IosSeminar7Tests
//
//  Created by Admin on 28.02.2024.
//

@testable import IosSeminar7

final class PresenterSpy: PresenterProtocol {
    private(set) var isUpdateScreenWasCalled = false
    
    func updateScreen() {
        isUpdateScreenWasCalled = true
    }
}
