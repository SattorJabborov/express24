//
//  ContentView.swift
//  Express24
//
//  Created by Sattor Jabborov on 11/12/22.
//

import SwiftUI

struct homeView: View {
    
    //MARK: BODY
    var body: some View {
        NavigationView { // start nav
            ZStack(){ //start zstack
                
                // background
                Color.gray.opacity(0.2)
                
                // content
                ScrollView(.vertical) {
                    LazyVStack(alignment: .leading){
                        
                        addsScrollView
                        
                        HStack{
                            Text("Shops")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                            Spacer()
                            Text("all")
                                .font(.title2)
                            Image(systemName: "chevron.right")
                                .font(.title2)
                        }
                        .padding(.horizontal)
                        
                       shopsScrollView
                        
                        Text("Restaurants")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                        ScrollView(.horizontal) {
                            HStack{
                                categories
                            }
                            .padding(.horizontal)
                        }
                        restourantScrollView
                    }
                }
            } //end zstack
            .navigationTitle("Express 24")
        } // end nav
    }
    
    // MARK: SUBVIEWS
    
    var addsScrollView: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(1..<10) { _ in
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 180, height: 110)
                }
            }
            .padding(.horizontal)
            .padding(.top)
        }
    }
    
    var shopsScrollView: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(1..<10) { _ in
                    RoundedRectangle(cornerRadius: 20.0)
                        .frame(width: 180, height: 140)
                        .overlay(
                            Text("Title")
                                .foregroundColor(.white)
                                .font(.title2)
                                .padding(),
                            alignment: .bottomLeading
                        )
                }
            }
            .padding(.horizontal)
        }
    }
    
    var restourantScrollView: some View {
        ForEach(1..<10) { _ in
            VStack(alignment: .leading){
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                    .frame( height: 210)
                HStack(){
                    Text("DODA PIZZA")
                        .fontWeight(.semibold)
                    Spacer()
                    Image(systemName: "heart")
                }
                .font(.title)
                .padding(.horizontal)
                Text("title")
                    .foregroundColor(.secondary)
                    .font(.title3)
                    .padding(.leading)
                HStack{
                    Image(systemName: "star")
                    Text("4.5 (479)")
                        .padding(.trailing)
                    Image(systemName: "car")
                    Text("14 000 sum")
                }
                .padding(25)
            }
            .background(Color.white)
            .cornerRadius(20)
            .padding()
        }
    }
    
    var categories: some View {
        ForEach(1..<10) { _ in
            HStack {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                Text("Favorites")
            }
            .font(.title2)
            .padding()
            .background(Color.white)
            .cornerRadius(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
