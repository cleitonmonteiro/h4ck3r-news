//
//  ContentView.swift
//  H4ck3r News
//
//  Created by Cleiton Monteiro on 17/04/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            if networkManager.posts.count == 0 && networkManager.isLoading {
                ProgressView(K.loadindData)
            } else {
                List(networkManager.posts) { post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
                .navigationBarTitle(K.appName)
                .background(Color.green)
                .listStyle(GroupedListStyle())
                .refreshable {
                    self.networkManager.fetchNews(K.URL.hnFrontPage)
                }
            }
        }
        .onAppear {
            self.networkManager.fetchNews(K.URL.hnFrontPage)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
