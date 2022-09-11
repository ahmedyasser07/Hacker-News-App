//
//  ContentView.swift
//  Hacker-News
//
//  Created by Ahmed Abdelfatah on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) {post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//MARK: - Post Struct



//let posts = [
//    Post(id: "1", title: "hello"),
//    Post(id: "2", title: "hi"),
//    Post(id: "2", title: "good morning"),
//]
