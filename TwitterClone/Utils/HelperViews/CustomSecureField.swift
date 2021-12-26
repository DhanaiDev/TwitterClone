//
//  CustomSecureField.swift
//  TwitterClone
//
//  Created by dhanasekaran on 24/12/21.
//

import SwiftUI

struct CustomSecureField: View {
    let placeHolder: String
    @Binding var text: String
    
    
    
    var body: some View {
        ZStack(alignment: .leading){
            if text.isEmpty {
                Text(placeHolder)
                    .opacity(0.75)
            }
            
            SecureField(String(), text: $text, prompt: nil)
                .font(.system(size: 16, weight: .semibold, design: .default))
        }
    }
}

struct CustomSecureField_Previews: PreviewProvider {
    static var previews: some View {
        CustomSecureField(placeHolder: "Password", text: .constant("Value"))
    }
}
