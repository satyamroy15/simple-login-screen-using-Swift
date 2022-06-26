//
//  ContentView.swift
//  Shared
//
//  Created by Satyam Roy on 26/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var userName = ""
    @State private var password = ""
    @State private var wrongUserName = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("User Name", text: $userName)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(18)
                        .border(.red, width: CGFloat(wrongUserName))
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(18)
                        .border(.red, width: CGFloat(wrongPassword))
                    Button("Login") {
                        authenticateUser(userName: userName, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(16)
                    
                    NavigationLink(destination: Text("Hi there \(userName)\nYou are logged in!!").multilineTextAlignment(.center),isActive: $showingLoginScreen)
                        {
                        EmptyView()
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }


    func authenticateUser(userName: String, password: String) {
//    if userName.lowercased() == "royTest123" {
        wrongUserName = 0
//        if password.lowercased() == "test123" {
            wrongPassword = 0
            showingLoginScreen = true
//        }
//        else {
            wrongPassword = 2
//        }
//    }
//    else {
//        wrongUserName = 2
//    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
