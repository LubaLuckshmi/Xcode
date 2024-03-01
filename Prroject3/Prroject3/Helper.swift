//
//  Helper.swift
//  Prroject3
//
//  Created by Admin on 20.02.2024.
//

import Foundation

final class Helper {
    static func getDate(date: Double) -> String {
        let currentDate = Date(timeIntervalSince1970: date)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MM YYYY"
        dateFormatter.locale = Locale(identifier: "ru_RU")
        
        return dateFormatter.string(from: currentDate)
    }
}
