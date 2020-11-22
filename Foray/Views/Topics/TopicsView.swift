//
//  TopicsView.swift
//  Foray
//
//  Created by Ethan Bovard on 11/21/20.
//

import SwiftUI

struct TopicsView: View {
    @State var categories: [TopicNode] = [TopicNode(topic: "⌨️ #programming"), TopicNode(topic: "🖥 #building"), TopicNode(topic: "⚡️ #electronics"), TopicNode(topic: "🎮 #gaming"), TopicNode(topic: "🏈 #prosports")]
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Check out new communities that can bring out the best in you.")
                        .font(.headline)
                        .fontWeight(.bold)
                    Spacer()
                }
                ScrollView {
                    ForEach((0..<categories.count), id: \.self) { category in
                        NavigationLink(destination: TopicView(title: categories[category].topic)) {
                            categories[category]
                        }
                        .foregroundColor(.white)
                    }
                }
                .padding(.top)
                Spacer()
            }
            .navigationBarTitle("Topics", displayMode: .large)
            .padding(.horizontal)
        }
    }
}

struct TopicNode: View {
    var topic: String
    var body: some View {
        HStack {
            Text("\(topic)")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "chevron.right")
        }
        Divider()
    }
}

struct TopicsView_Previews: PreviewProvider {
    static var previews: some View {
        TopicsView()
            .preferredColorScheme(.dark)
    }
}
