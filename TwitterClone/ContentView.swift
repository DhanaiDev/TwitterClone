//
//  ContentView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 15/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                FeedView().tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
                
                Text("Search View").tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                
                Text("Messages").tabItem {
                    Image(systemName: "envelope")
                    Text("Messages")
                }
            }
            
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
