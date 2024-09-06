//
//  MyProfile.swift
//  Savor
//
//  Created by Zhining Zhao on 8/17/24.
//

// My Profile HOME

import SwiftUI

struct MyProfile: View {
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10) {
                
                HStack {
                    
                    Text("Zhining Zhao")
                        .bold()
                        .font(.custom("Cochin", fixedSize: 36))
                    
                }
                
                Text("My Public Profile")
                    .font(.custom("Cochin", fixedSize: 16))
                    .foregroundStyle(.gray)
                
                Divider()
                Text("Place Top Ten Restaurants Row here...")
                
                Divider()
                Text("Place Recent Restaurant Images here...")
                
                Divider()
                Text("Place a list of Restaurants You Want To Try...")
                
                Divider()
                Text("My bookmarks?")
                
                Divider()
                Text("Option to Change Settings?")
            }

        }
        .padding()
    }
    
}

#Preview {
    MyProfile()
}
