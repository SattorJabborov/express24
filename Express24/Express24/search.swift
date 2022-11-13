//
//  search.swift
//  Express24
//
//  Created by Sattor Jabborov on 11/13/22.
//

import SwiftUI

struct search: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Search", text: $searchText)
                Image(systemName: "xmark")
            }
            .font(.title3)
            .padding()
            Spacer()
        }
    }
}

struct search_Previews: PreviewProvider {
    static var previews: some View {
        search()
    }
}
