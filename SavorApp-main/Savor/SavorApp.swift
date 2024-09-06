//
//  SavorApp.swift
//  Savor
//
//  Created by Zhining Zhao on 8/13/24.
//

import SwiftUI
import SwiftData
import Firebase

@main
struct SavorApp: App {
    
//    @State private var modelData = ModelData()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
   
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                RootView()
            }
//                .environment(modelData) // Need to Create model data
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
 
