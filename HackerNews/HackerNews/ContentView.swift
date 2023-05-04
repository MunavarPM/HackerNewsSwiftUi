//
//  ContentView.swift
//  HackerNews
//
//  Created by MUNAVAR PM on 03/05/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.post) { post in
                NavigationLink(destination: DetailedView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
            }
            .navigationTitle("HACKER NEWS")
        }
        .onAppear(){
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Abi"),
//    Post(id: "3", title: "munavar")
//]
