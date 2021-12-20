//
//  UserProfileView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 20/12/21.
//

import SwiftUI

struct UserProfileView: View {
    
    @State var selectedTweetOption: TweetFilterOption = .tweets
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView().padding()
                
                FilterButtonsView(selectedTweetFilterOption: $selectedTweetOption)
                
                
                ForEach(0..<10) { _ in
                    FeedViewCell()
                }
            }
        }
        
        .navigationTitle("User Profile")
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
