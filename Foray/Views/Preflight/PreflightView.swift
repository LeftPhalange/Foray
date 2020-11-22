//
//  PreflightView.swift
//  Foray
//
//  Created by Ethan Bovard on 11/21/20.
//

import SwiftUI

struct PreflightView: View {
    var body: some View {
        VStack {
            Text("Foray")
                .font(.title)
                .fontWeight(.bold)
            AuthenticationView(register: false)
        }
    }
}

struct PreflightView_Previews: PreviewProvider {
    static var previews: some View {
        PreflightView()
    }
}
