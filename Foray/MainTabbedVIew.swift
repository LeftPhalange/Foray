//
//  MainTabbedView.swift
//  Foray
//
//  Created by Ethan Bovard on 11/21/20.
//

import SwiftUI

struct MainTabbedView: View {
    var selectionIndex = 1
    var body: some View {
        TabView {
            Text("Feed").tabItem {
                TabIcon(iconName: "rectangle.stack.fill", title: "Feed")
            }.tag(1)
            Text("Settings").tabItem {
                TabIcon(iconName: "gear", title: "Settings")
            }.tag(2)
        }
    }
}

// additional structs to make life easier :-)

struct TabIcon: View {
    var iconName: String
    var title: String
    var body: some View {
        VStack {
            Image(systemName: iconName)
            Text(title)
        }
    }
}

struct MainTabbedView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabbedView()
    }
}
