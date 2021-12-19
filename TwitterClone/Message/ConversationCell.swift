//
//  ConversationCell.swift
//  TwitterClone
//
//  Created by dhanasekaran on 19/12/21.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56, alignment: .center)
                    .clipShape(Circle())
                
                VStack(alignment: .leading){
                    Text("Batman").font(.system(size: 14, weight: .semibold))
                    
                    Text("This is longer message to text Probably at least one. ")
                        .font(.system(size: 14))
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                }
                
            }
            .padding(.horizontal)
            Divider()
            
        }
        .foregroundColor(Color.black)
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
