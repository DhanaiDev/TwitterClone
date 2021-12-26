//
//  ContentView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 15/12/21.
//

import SwiftUI

struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            TabView {
//                FeedView().tabItem{
//                    Image(systemName: "house")
//                    Text("Home")
//                }
//                
//                SearchView().tabItem{
//                    Image(systemName: "magnifyingglass")
//                    Text("Search")
//                }
//                
//                ConversationView().tabItem {
//                    Image(systemName: "envelope")
//                    Text("Messages")
//                }
//            }
//            
//            .navigationTitle("Home")
//            .navigationBarTitleDisplayMode(.inline)
//        }
//    }
    
    var body: some View {
        NavigationView {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
