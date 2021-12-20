//
//  FilterButtonsView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 20/12/21.
//

import SwiftUI

enum TweetFilterOption: Int, CaseIterable
{
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Tweets & Replies"
        case .likes: return "Likes"
        }
    }
}

struct FilterButtonsView: View {

    @Binding var selectedTweetFilterOption: TweetFilterOption
    
    private var underLineFrame: CGFloat {
        return UIScreen.main.bounds.width / CGFloat(TweetFilterOption.allCases.count)
    }
    
    private var padding: CGFloat {
        return ( underLineFrame * CGFloat(selectedTweetFilterOption.rawValue) ) + 16
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack{
                ForEach(TweetFilterOption.allCases, id: \.self) { option in
                    Button(action: { self.selectedTweetFilterOption = option }) {
                        Text(option.title)
                            .font(.subheadline)
                            .frame(width: underLineFrame - 8)
                    }
                }
            }
            
            Rectangle()
                .frame(width: underLineFrame - 32, height: 3, alignment: .center)
                .padding(.leading, padding)
                .animation(.spring(), value: padding)
            
        }.foregroundColor(.blue)
    }
}

struct FilterButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonsView(selectedTweetFilterOption: .constant(.likes))
    }
}
