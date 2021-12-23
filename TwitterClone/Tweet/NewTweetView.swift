//
//  NewTweetView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 21/12/21.
//

import SwiftUI

struct NewTweetView: View {
    
    @State private var tweetText: String = ""
    @State private var isDialogShown: Bool = false
    
    @Binding var showNewTweet: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .top) {
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60, alignment: .center)
                        .clipShape(Circle())
                        .clipped()
                        .padding()
                    
                    TextView(text: $tweetText, placeHolder: "What's happening?")
                        .padding(.top, 20)
                    
                }
                Spacer()
            }
            
            .toolbar {
                ToolbarItemGroup(placement: .cancellationAction) {
                    Button(action: {
                        self.isDialogShown.toggle()
                    }) {
                        Text("Cancel")
                    }.confirmationDialog(Text("This is title "), isPresented: $isDialogShown) {
                        Button(action: {
                            self.showNewTweet.toggle()
                        }) {
                            Text("Yes")
                        }
                    } message: {
                        Text("Are you Sure to Close this Tweet")
                    }
                    
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }) {
                        Text("Tweet")
                            .font(.callout)
                            .foregroundColor(.white)
                            .padding(7)
                            .padding(.horizontal, 8)
                            .background(Color(.systemBlue))
                            .clipShape(Capsule())
                        
                    }
                }
            }
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView(showNewTweet: .constant(false))
    }
}
