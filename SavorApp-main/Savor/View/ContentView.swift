//
//  ContentView.swift
//  Savor
//
//  Created by Zhining Zhao on 8/13/24.
//

import SwiftUI
import SwiftData

// Landing Page
struct ContentView: View {
    
    // Variable to select view.
    @State private var vSelection: Tab = .home

    // Views to select from.
    enum Tab {
        case profile
        case friends
        case home
    }
    
    var body: some View {
        
        TabView(selection: $vSelection) {
            
            // Home Page
            HomePage()
                .tabItem {
                    Label("home", systemImage: "fork.knife")
                }
                .tag(Tab.home)
            
            // Friends List
            MyFriends()
                .tabItem {
                    Label("friends", systemImage: "list.bullet")
                }
                .tag(Tab.friends)
            
            // User Profile
            MyProfile()
                .tabItem {
                    Label("me", systemImage: "person.fill")
                }
                .tag(Tab.profile)

        }
        .accentColor(.pink) // Consider changing to a custom color palette.
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
