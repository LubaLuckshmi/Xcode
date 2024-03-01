//
//  NewsModel.swift
//  Prroject3
//
//  Created by Admin on 20.02.2024.
//

import SwiftUI


struct NewsModel: Decodable {
    var results: [News]
}

struct News: Decodable, Identifiable {
    var id = UUID()  
    
    var date: Int
    var title: String
    
    enum CodingKeys: String, CodingKey {
        case date = "publication_date"
        case title
    }
}
