//
//  SearchView.swift
//  TwitterClone
//
//  Created by dhanasekaran on 19/12/21.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText).padding()
            
            LazyVStack {
                ForEach(0..<40) { index in
                    NavigationLink {
                        UserProfileView()
                    } label: {
                        UserCell()
                    }

                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
