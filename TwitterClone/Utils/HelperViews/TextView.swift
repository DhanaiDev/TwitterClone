//
//  TextView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 21/12/21.
//

import SwiftUI

struct TextView: View {
    
    @Binding var text: String
    let placeHolder: String
    
    var body: some View {
        ZStack(alignment: .topLeading){
            
            if text.isEmpty {
                Text(placeHolder)
                    .foregroundColor(Color.gray)
                    .padding(.horizontal, 5)
                    .padding(.vertical, 12)
            }
            
            PlainTextView(text: $text)
                .padding(.vertical, 4)
            
        }
        .font(.body)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: .constant(""), placeHolder: "PlaceHolder")
    }
}

struct PlainTextView: View {
    
    @Binding var text: String
    
    init(text: Binding<String>) {
        self._text = text
        UITextView.appearance().backgroundColor = UIColor.clear
    }
    
    var body: some View {
        TextEditor(text: $text)
    }
    
}
