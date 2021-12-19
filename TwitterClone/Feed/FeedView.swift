//
//  FeedsView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 15/12/21.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView {
                VStack {
                    ForEach(0..<20) { _ in
                        FeedViewCell()
                    }
                }
            }
            
            Button(action: {}) {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 32, height: 32)
                    .padding()
            }
            .background(Color.blue)
            .foregroundColor(Color.white)
            .clipShape(Circle())
            .padding()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
