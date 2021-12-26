//
//  LoginView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 24/12/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var mail: String = ""
    @State var passWord: String = ""
    
    private let colorTheme: Color = Color(#colorLiteral(red: 0.1147985235, green: 0.632858336, blue: 0.9529016614, alpha: 1))
    
    var body: some View {
        VStack{
            Image("twitter-logo")
                .resizable()
                .scaledToFill()
                .frame(width: 220, height: 200, alignment: .top)
                .padding(.top, 44)
            
            VStack {
                AuthenticationTextField(text: $mail, fieldType: .mail)
                
                AuthenticationTextField(text: $passWord, fieldType: .password)
                    .padding(.top)
                
                Button(action: {}) {
                    
                    Spacer()
                    
                    Text("Forgot Password?")
                        .foregroundColor(Color.white)
                        .font(.footnote)
                        .bold()
                        .padding(.vertical)
                }
                
                Button(action: { } , label: {
                    HStack {
                        Spacer()
                        
                        Text("Sign In")
                            .foregroundColor(colorTheme)
                            .font(.callout)
                            .bold()
                        
                        Spacer()
                        
                    }
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 225))
                })
                
            }
            .padding(.horizontal)
            .padding(.top)
            
            Spacer()
            
            NavigationLink {
                SignupView()
            } label: {
                HStack {
                    Text("Dont have an account?")
                        .foregroundColor(Color.white)
                        .font(.footnote)
                        .bold()
                        .padding(.vertical)
                    
                    Text("Signup")
                        .foregroundColor(Color.white)
                        .font(.callout)
                        .bold()
                        .padding(.vertical)
                    
                }
                .padding(.bottom, 40)
            }
        }
        .background(colorTheme)
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
