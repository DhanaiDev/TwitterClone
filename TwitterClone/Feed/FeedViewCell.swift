//
//  FeedViewCell.swift
//  TwitterClone
//
//  Created by dhanasekaran on 16/12/21.
//

import SwiftUI

struct FeedViewCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("batman")
                    .resizable()
                    .frame(width: 56, height: 56, alignment: .center)
                    .clipped()
                    .scaledToFill()
                    .clipShape(Circle())
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 5) {
                    HStack(alignment: .center, spacing: 10) {
                        Text("Batman")
                            .font(.system(size: 14, weight: .semibold, design: .default))
                        Text("@batman •").font(.system(size: 14, weight: .regular, design: .default)).foregroundColor(Color.gray)
                        
                        Text("27w").font(.system(size: 14, weight: .regular, design: .default)).foregroundColor(Color.gray)
                        
                        Spacer()
                        
                        Button("•••", action: {}).padding(.trailing).foregroundColor(Color.gray)
                    }
                    
                    Text("Its not who I am underneath, but what I do that defines me")
                        .font(.system(size: 16, weight: .regular, design: .rounded)).padding(.trailing)
                }
            }
            
            HStack (alignment: .center){
                Button(action: {}) {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
                Spacer()
                Button(action: { }) {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
            }.foregroundColor(Color.gray)
                .padding(.horizontal)
            Divider()
        }
        .padding(.leading, -8)
    }
}

struct FeedViewCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedViewCell()
    }
}
