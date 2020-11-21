//
//  RegisterView.swift
//  Foray
//
//  Created by Ethan Bovard on 11/21/20.
//

import SwiftUI

struct RegisterView: View {
    @State var userNameInput: String = ""
    @State var passwordInput: String = ""
    var body: some View {
        VStack {
            VStack {
                Text("Foray")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Welcome back! Log in here.")
                    .fontWeight(.regular)
                VStack {
                    TextField("User name", text: $userNameInput)
                        .padding(.all, 8.0)
                        .background(RoundedRectangle(cornerRadius: 8.0)
                                        .foregroundColor(Color.init(red: 0.2, green: 0.2, blue: 0.2)))
                    SecureField("Password", text: $passwordInput)
                        .padding(.all, 8.0)
                        .background(RoundedRectangle(cornerRadius: 8.0)
                                        .foregroundColor(Color.init(red: 0.2, green: 0.2, blue: 0.2)))
                    HStack {
                        RegisterButton()
                        LogOnInstead()
                    }
                    .padding(.top)
                    
                }
                .padding(.all)
            }
            .padding(.all)
        }
    }
}

struct RegisterButton: View {
    var body: some View {
        Button(action: functionThatDoesNothing) {
            Text("Register")
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
        .padding(.vertical, 10.0)
        .padding(.horizontal, 24.0)
        .background(RoundedRectangle(cornerRadius: 12.0)
                        .foregroundColor(.blue))
    }
    func functionThatDoesNothing() {
        
    }
}

struct LogOnInstead: View {
    var body: some View {
        Button(action: functionThatDoesNothing) {
            Text("Log on instead")
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
        .padding(.vertical, 10.0)
        .padding(.horizontal)
        .background(RoundedRectangle(cornerRadius: 12.0)
                        .foregroundColor(.gray))
    }
    func functionThatDoesNothing() {
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .preferredColorScheme(.dark)
    }
}
