//
//  ContentView.swift
//  Layout2.0
//
//  Created by Екатерина Яцкевич on 11.05.25.
//

import SwiftUI

struct ContentView: View {
    @State var page: String = "house"
    var pages: [String] = [
        "house",
        "plus",
        "person"
    ]
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $page) {
                HomeView()
                    .tag("house")
                Text("Second")
                    .tag("plus")
                Text("profile")
                    .tag("person")
            }
            
            HStack{
                ForEach(pages, id: \.self) { page in
                    TabBarItemView(page: $page, image: page)
                }
                .frame(maxWidth: .infinity)
               
            }
            .padding()
            .background(.appGray)
            .clipShape(Capsule())
            .padding()
        }
    }
}

#Preview {
    ContentView()
}


