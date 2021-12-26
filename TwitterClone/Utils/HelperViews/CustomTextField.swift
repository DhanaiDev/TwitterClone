//
//  CustomTextField.swift
//  TwitterClone
//
//  Created by dhanasekaran on 24/12/21.
//

import SwiftUI

struct CustomTextField: View {
    
    let placeHolder: String
    @Binding var text: String
    
    
    
    var body: some View {
        ZStack(alignment: .leading){
            if text.isEmpty {
                Text(placeHolder)
                    .opacity(0.75)
            }
            
            TextField(String(), text: $text, prompt: nil)
                .font(.system(size: 16, weight: .semibold, design: .default))
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(placeHolder: "PlaceHolder", text: .constant("Test"))
    }
}
