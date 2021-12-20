//
//  MessageView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 20/12/21.
//

import SwiftUI

struct MessageView: View {
    
    let message: MockMessage
    
    var body: some View {
        HStack {
            if message.isCurrentUser {
                Spacer()
                Text(message.messageText)
                    .padding()
                    .background(Color.blue)
                    .clipShape(ChatBubble(isCurrentUser: message.isCurrentUser))
                    .foregroundColor(Color.white)
                    .padding(.horizontal)
            } else {
                HStack(alignment: .bottom) {
                    Image(message.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .clipped()
                    
                    Text(message.messageText)
                        .padding()
                        .background(Color(.systemGray5))
                        .clipShape(ChatBubble(isCurrentUser: message.isCurrentUser))
                        .foregroundColor(Color.black)
                    
                    
                }
                .padding(.horizontal)
                Spacer()
            }
            
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: MOCK_MESSAGES[0])
    }
}
