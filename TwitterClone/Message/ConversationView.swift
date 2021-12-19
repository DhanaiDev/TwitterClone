//
//  ConversationView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 19/12/21.
//

import SwiftUI

struct ConversationView: View {
    
    @State private var isMessageShown: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
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
            .sheet(isPresented: $isMessageShown) {
                print("Dismiss")
            } content: {
                SearchView()
            }

        }
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
