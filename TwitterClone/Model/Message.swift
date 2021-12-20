//
//  Message.swift
//  TwitterClone
//
//  Created by dhanasekaran on 20/12/21.
//

import Foundation

protocol MessageProtocol: Identifiable
{
    var id: Int { get }
    var imageName: String { get }
    var messageText: String { get }
    var isCurrentUser: Bool { get }
}

struct MockMessage: MessageProtocol, Identifiable
{
    let id: Int
    let imageName: String
    let messageText: String
    let isCurrentUser: Bool
}

let MOCK_MESSAGES: [MockMessage] = [
    MockMessage(id: 0, imageName: "spiderman", messageText: "Hello! What can I do for you?", isCurrentUser: false),
    MockMessage(id: 1, imageName: "batman", messageText: "Good Morning Doctor. I don’t feel good.", isCurrentUser: true),
    MockMessage(id: 2, imageName: "spiderman", messageText: "Come and sit here. Since how long are you not feeling well?", isCurrentUser: false),
    MockMessage(id: 3, imageName: "batman", messageText: "Since yesterday.", isCurrentUser: true),
    MockMessage(id: 4, imageName: "spiderman", messageText: "No problem. Did you have motions yesterday?", isCurrentUser: false),
    MockMessage(id: 5, imageName: "batman", messageText: "No Doctor. Not so freely. Doctor I feel weak and do not feel like eating.", isCurrentUser: true),
    MockMessage(id: 6, imageName: "spiderman", messageText: "Ok. And what else?", isCurrentUser: false),
    MockMessage(id: 7, imageName: "batman", messageText: "I feel like vomiting.", isCurrentUser: true),
    MockMessage(id: 8, imageName: "spiderman", messageText: "Do you drink a lot of water?", isCurrentUser: false),
]
