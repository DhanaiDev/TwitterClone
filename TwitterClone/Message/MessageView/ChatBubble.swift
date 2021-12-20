//
//  ChatBubble.swift
//  TwitterClone
//
//  Created by dhanasekaran on 19/12/21.
//

import SwiftUI

struct ChatBubble: Shape {
    
    var isCurrentUser: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, isCurrentUser ? .bottomLeft : .bottomRight], cornerRadii: .init(width: 16, height: 16))
        
        return Path(path.cgPath)
    }
}

struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(isCurrentUser: true)
    }
}
