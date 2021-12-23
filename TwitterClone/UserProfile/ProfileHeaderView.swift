//
//  ProfileHeaderView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 20/12/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .clipped()
                .shadow(color: .black, radius: 10, x: 1, y: 0)
            
            VStack(spacing: 8) {
                Text("Bruce Wayne")
                    .font(.system(size: 16, weight: .semibold))
                    .padding(.top, 8)
                
                Text("@batman")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Text("DC Universe • Anti-Hero • Parasite")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding()
            
            HStack(spacing: 40) {
                FollowView(followViewModel: .init(numbers: "0", state: .followers))
                
                FollowView(followViewModel: .init(numbers: "1", state: .following))
            }
            
            ProfileActionButtonsView(isCurrentUser: false)
                .padding(.top)
            
            Spacer()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
struct FollowViewModel
{
    enum State: String
    {
        case followers = "Followers"
        case following = "Following"
    }
    let numbers: String
    let state: State
}
struct FollowView: View {
    
    let followViewModel: FollowViewModel
    
    var body: some View {
        VStack {
            Text(followViewModel.numbers)
                .font(.system(size: 16, weight: .bold))
            
            Text(followViewModel.state.rawValue)
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
}
