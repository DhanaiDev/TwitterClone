//
//  UserCell.swift
//  TwitterClone
//
//  Created by dhanasekaran on 19/12/21.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        VStack{
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56, alignment: .center)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Batman")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("@bruce_wayne")
                        .font(.system(size: 14))
                }.foregroundColor(.black)
                Spacer()
                
            }
            .padding(.horizontal)
            
            Divider()
        }
       
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
