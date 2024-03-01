//
//  NetworkService.swift
//  Prroject3
//
//  Created by Admin on 20.02.2024.
//

import SwiftUI

final class NetworkService {
    
    private let session = URLSession.shared
    
    func getNews(completion: @escaping([News]) -> Void) {
        guard let url = URL(string: "https://kudago.com/public-api/v1.4/news/?fields=publication_date,title&text_format=text&actual_only=true") else {
            return
        }
        
        session.dataTask(with: url) {
            (data, _, error) in
            guard let data = data else {
                return
            }
            do {
                let news = try JSONDecoder().decode(NewsModel.self, from: data)
                completion(news.results)
                print(news)
            } catch {
                print(error)
            }
        }.resume()
    }
}
