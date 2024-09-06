//
//  SignInPhoneView.swift
//  Savor
//
//  Created by TY Z on 8/22/24.
//

import SwiftUI

@MainActor
final class SignInPhoneViewModel: ObservableObject{
    
    @Published var email = ""
    @Published var password = ""
    
    func signIn()  {
        guard !email.isEmpty, !email.isEmpty else{
            print("No email or password found.")
            return
        }
        
        Task{
            do {
                let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("success")
                print(returnedUserData)
            }
            catch{
                print("Error: \(error)")
            }
        }
    }
}

struct SignInPhoneView: View {
    
    @StateObject private var viewModel = SignInPhoneViewModel()
    
    var body: some View {
        VStack{
            
            TextField("Email", text: $viewModel.email)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            
            SecureField("Password", text: $viewModel.password)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            
            Button{
                viewModel.signIn()
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .navigationTitle("Sign In With Email")
    }
}


struct SignInPhoneView_Previews: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            SignInPhoneView()
        }
    }
}
