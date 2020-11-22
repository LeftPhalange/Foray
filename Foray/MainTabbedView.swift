//
//  MainTabbedView.swift
//  Foray
//
//  Created by Ethan Bovard on 11/21/20.
//

import SwiftUI

struct MainTabbedView: View {
    @State var selectionIndex = 1
    var body: some View {
        TabView (selection: $selectionIndex) {
            FeedView().tabItem {
                TabIcon(iconName: "rectangle.stack.fill", title: "Feed")
            }.tag(1)
            TopicsView().tabItem {
                TabIcon(iconName: "sparkles.rectangle.stack.fill", title: "Topics")
            }.tag(2)
            Text("Settings").tabItem {
                TabIcon(iconName: "gear", title: "Settings")
            }.tag(3)
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
            .preferredColorScheme(.dark)
    }
}
