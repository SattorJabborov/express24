//
//  tabView.swift
//  Express24
//
//  Created by Sattor Jabborov on 11/13/22.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        TabView{
            homeView().tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            search().tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
            Text("orders").tabItem {
                Image(systemName: "bag")
                Text("Orders")
            }
            Text("profile").tabItem {
                Image(systemName: "person.crop.circle")
                Text("Profile")
            }
        }
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
