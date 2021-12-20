//
//  NewMessageView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 20/12/21.
//

import SwiftUI

struct NewMessageView: View {
    
    @State var searchText: String = ""
    @Binding var show: Bool
    
    var dismissal: ((Bool) -> Void)
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText).padding()
            
            VStack {
                ForEach(0..<40) { index in
                    Button(action: {
                        self.show.toggle()
                        self.dismissal(true)
                    }, label: {
                        UserCell()
                    })
                }
            }
        }
    }
}
struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView(show: .constant(true), dismissal: { _ in })
    }
}
