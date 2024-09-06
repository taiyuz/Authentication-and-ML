//
//  SwiftUIView.swift
//  Savor
//
//  Created by TY Z on 8/23/24.
//

import SwiftUI

struct RootView: View {
    
    @State private var showSignInView: Bool = false
    
    var body: some View {
        ZStack{
            NavigationStack{
                SettingsView(showSignInView: $showSignInView)
            }
        }
        .onAppear{
            let authuser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignInView = authuser == nil
        }
        .fullScreenCover(isPresented: $showSignInView){
            NavigationStack{
                AuthenticationView()
            }
        }
    }
}

struct RootView_Previews: PreviewProvider{
    static var previews: some View{
        RootView()
    }
}
