//
//  AuthenticationTextField.swift
//  TwitterClone
//
//  Created by dhanasekaran on 24/12/21.
//

import SwiftUI

enum AuthenticationFieldType
{
    case mail
    case password
    case fullName
    case userName
    
    var imageName: String {
        switch self {
        case .mail: return "envelope"
        case .password: return "lock"
        case .fullName, .userName: return "person"
        }
    }
    
    var placeHoldeText: String {
        switch self {
        case .mail:
            return "Email"
        case .password:
            return "Password"
        case .fullName:
            return "Full Name"
        case .userName:
            return "User Name"
        }
    }
}

struct AuthenticationTextField: View {
    
    @Binding var text: String
    let fieldType: AuthenticationFieldType
    
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: fieldType.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 15, height: 15, alignment: .center)
                .padding(.leading, 5)
            
            switch fieldType {
            case .password:
                CustomSecureField(placeHolder: fieldType.placeHoldeText, text: $text)
                    .padding(.horizontal)
                    .font(.body)
            case .userName, .fullName, .mail:
                CustomTextField(placeHolder: fieldType.placeHoldeText, text: $text)
                    .padding(.horizontal)
                    .font(.body)
            }
                
            
        }
        .foregroundColor(Color.white)
        .tint(Color.white)
        .padding()
        .background(Color.white.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

struct AuthenticationTextField_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            AuthenticationTextField(text: .constant(""), fieldType: .mail)
            AuthenticationTextField(text: .constant("Tst"), fieldType: .password)
            Spacer()
        }.background(Color.blue)
    }
}
