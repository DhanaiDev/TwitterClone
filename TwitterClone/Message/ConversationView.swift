//
//  ConversationView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 19/12/21.
//

import SwiftUI

struct ConversationView: View {
    
    @State private var isMessageShown: Bool = false
    @State private var isToStartChat: Bool = false
    @State private var isStartToChatTriggered: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            
            NavigationLink(destination: ChatView(), isActive: $isToStartChat, label: { })
            
            ScrollView{
                VStack{
                    ForEach(0..<10) { _ in
                        NavigationLink {
                            ChatView()
                        } label: {
                            ConversationCell()
                        }

                    }
                }
            }
            
            Button(action: { self.isMessageShown.toggle() }) {
                Image(systemName: "envelope")
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            }
            .background(Color.blue)
            .foregroundColor(Color.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isMessageShown, onDismiss: {
                if isStartToChatTriggered {
                    self.isToStartChat.toggle()
                }
            }, content: {
                NewMessageView(show: $isMessageShown) { result in
                    self.isStartToChatTriggered = result
                }
            })

        }
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
