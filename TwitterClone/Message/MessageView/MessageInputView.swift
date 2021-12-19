//
//  MessageInputView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 19/12/21.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var message: String
    
    var body: some View {
        HStack {
            TextField("Message...", text: $message, prompt: nil)
                .textFieldStyle(.plain)
                .frame(minHeight: 30)
            
            Button(action: {}) {
                Text("Send").foregroundColor(Color(.systemBlue))
                    .font(.system(size: 15, weight: .bold))
            }
        }
        .padding()
    }
}

struct MessageInputView_Previews: PreviewProvider {
    static var previews: some View {
        MessageInputView(message: .constant("Message..."))
    }
}
