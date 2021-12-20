//
//  ProfileActionButtonsView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 20/12/21.
//

import SwiftUI

struct ProfileActionButtonsView: View {
    
    let isCurrentUser: Bool
    
    var body: some View {
        if isCurrentUser {
            Button(action: { }) {
                Text("Edit Profile")
                    .font(.callout)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 40)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(color: .gray, radius: 6, x: 0, y: 0)
            }
        } else {
            HStack (spacing: 20) {
                Button(action: { }) {
                    Text("Following")
                        .font(.callout)
                        .foregroundColor(.white)
                        .frame(width: 160, height: 40)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(color: .gray, radius: 6, x: 0, y: 0)
                }
                
                Button(action: { }) {
                    Text("Message")
                        .font(.callout)
                        .foregroundColor(.white)
                        .frame(width: 160, height: 40)
                        .background(Color.purple)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(color: .gray, radius: 6, x: 0, y: 0)
                }
            }
        }
    }
}

struct ProfileActionButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonsView(isCurrentUser: true)
    }
}
