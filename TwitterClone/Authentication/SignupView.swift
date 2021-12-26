//
//  SignupView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 24/12/21.
//

import SwiftUI

struct SignupView: View {
    
    @State var fullName: String = ""
    @State var userName: String = ""
    @State var mail: String = ""
    @State var passWord: String = ""
    @State var profileImage: UIImage? = nil
    
    @State var isImagePickerPresented: Bool = false
    
    @Environment(\.dismiss) var dismissalAction
    
    private let colorTheme: Color = Color(#colorLiteral(red: 0.1147985235, green: 0.632858336, blue: 0.9529016614, alpha: 1))
    
    var body: some View {
        VStack{
            Button {
                isImagePickerPresented.toggle()
            } label: {
                if let profileImage = profileImage {
                     Image(uiImage: profileImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 140, height: 140, alignment: .center)
                        .clipShape(Circle())
                        .padding(.top, 88)
                        .padding(.bottom, 16)
                } else {
                    Image("plus_photo")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: 140, height: 140, alignment: .center)
                        .clipShape(Circle())
                        .padding(.top, 88)
                        .padding(.bottom, 16)
                        .foregroundColor(.white)
                }
            }
            .sheet(isPresented: $isImagePickerPresented) {
                
            } content: {
                ImagePicker(image: $profileImage)
            }


            
            VStack(spacing: 14) {
                
                AuthenticationTextField(text: $fullName, fieldType: .fullName)
                
                AuthenticationTextField(text: $mail, fieldType: .mail)
                
                AuthenticationTextField(text: $userName, fieldType: .userName)
                
                AuthenticationTextField(text: $passWord, fieldType: .password)
                
                Button(action: {} , label: {
                    HStack {
                        Spacer()
                        
                        Text("Sign Up")
                            .foregroundColor(colorTheme)
                            .font(.callout)
                            .bold()
                        
                        Spacer()
                        
                    }
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 225))
                })
                    .padding(.top)
            }
            .padding(.horizontal)
            .padding(.vertical)
            
            
            Spacer()
            
            HStack {
                Text("Already have an account?")
                    .foregroundColor(Color.white)
                    .font(.footnote)
                    .bold()
                    .padding(.vertical)
                Button(action: {
                    dismissalAction()
                }) {
                    
                    Text("Sign In")
                        .foregroundColor(Color.white)
                        .font(.callout)
                        .bold()
                        .padding(.vertical)
                }
            }
            .padding(.bottom, 40)
        }
        .background(colorTheme)
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
