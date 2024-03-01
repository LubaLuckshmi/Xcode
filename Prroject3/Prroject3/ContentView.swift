//
//  ContentView.swift
//  Prroject3
//
//  Created by Admin on 20.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var newsModel: NewsModel?
    @State var news: [News] = []
    private var networkService = NetworkService()

    var body: some View {
        List(news) { news in
            VStack {
                Text(Helper.getDate(date: Double(news.date))).font(.body).fontWeight(.light)
                Text(news.title).font(.title).fontWeight(.heavy)
            }
        }
        .onAppear {
            networkService.getNews {
                (news) in self.news = news
            }
        }
    }
}

#Preview {
    ContentView()
}
