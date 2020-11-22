//
//  AuthenticationView.swift
//  Foray
//  View responsible for either registering or authenticating existing accounts.
//  Created by Ethan Bovard on 11/21/20.
//

import SwiftUI

struct AuthenticationView: View {
    @State var userNameInput: String = ""
    @State var passwordInput: String = ""
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var register: Bool
    var body: some View {
        VStack {
            VStack {
                Text(register ? "Welcome! We're glad you're here to foray into something wonderful." : "Welcome back! Log in here.")
                    .fontWeight(.regular)
                VStack {
                    TextField("User name", text: $userNameInput)
                        .padding(.all, 8.0)
                        .background(RoundedRectangle(cornerRadius: 8.0)
                                        .foregroundColor(returnBackFieldColor()))
                    SecureField("Password", text: $passwordInput)
                        .padding(.all, 8.0)
                        .background(RoundedRectangle(cornerRadius: 8.0)
                                        .foregroundColor(returnBackFieldColor()))
                    HStack {
                        AuthenticateButton(register: true)
                        AuthenticateConverselyButton(register: true)
                    }
                    .padding(.top)
                    
                }
                .padding(.all)
            }
        }
    }
    func returnBackFieldColor () -> (Color) {
        if (colorScheme == .dark) {
            return Color.init(red: 0.2, green: 0.2, blue: 0.2)
        }
        else {
            return Color.init(red: 0.9, green: 0.9, blue: 0.9)
        }
    }
}

struct AuthenticateButton: View {
    var register: Bool
    var body: some View {
        Button(action: functionThatDoesNothing) {
            Text(register ? "Register" : "Log in")
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

struct AuthenticateConverselyButton: View {
    var register: Bool
    var body: some View {
        Button(action: functionThatDoesNothing) {
            Text(register ? "Log on instead" : "Register instead")
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

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView(register: false)
            
    }
}
