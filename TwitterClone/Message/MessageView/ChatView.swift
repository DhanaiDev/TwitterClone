//
//  ChatView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 19/12/21.
//

import SwiftUI

struct ChatView: View {
    
    @State var messageText: String = ""
    
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    ForEach(0..<10) { _ in
                        Text("Test")
                    }
                }
            }
            
            Divider()
            
            MessageInputView(message: $messageText)
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
