//
//  TopicView.swift
//  Foray
//
//  Created by Ethan Bovard on 11/21/20.
//

import SwiftUI

struct TopicView: View {
    var title: String
    var body: some View {
        VStack {
            HStack {
                Text("Welcome to \(title)! If you want to know more, this is where to begin.")
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
            }
            HStack {
                Text("ON RIGHT NOW")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
                Spacer()
            }
            .padding(.top)
            Divider()
            VStack {
                NavigationLink(destination: PostView(Title: "How to get started in Python?", Author: "coder", PostContent: "Hey guys! I'm new to Foray and I have questions about Python... actually, no I don't. Have a nice day.")) {
                    PostTopicView(Author: "coder", Post: ("How to get started in Python?", "Hey guys! I'm new to Foray and I have some questions about Python..."), DatePosted: Date())
                }
                .foregroundColor(.white)
            }
            Spacer()
        }
        .padding(.horizontal)
        .navigationBarTitle(title, displayMode: .large)
        .navigationBarItems(trailing: Button(action: doNothing) {
            Image(systemName: "square.and.pencil")
        })
    }
    func doNothing() {
        
    }
}

// Post button

struct PostButton: View {
    var body: some View {
        Image(systemName: "")
    }
}

// View for Posts within a Topic.

struct PostTopicView: View {
    var Author: String
    var Post: (String, String) // likely truncated
    var DatePosted: Date
    var body: some View {
        VStack {
            HStack {
                Text("Posted by @\(Author) 3 hours ago")
                    .fontWeight(.regular)
                Spacer()
            }
            HStack {
                Text("\(Post.0)")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "chevron.right")
            }
            HStack {
                Text("\(Post.1)")
                    .font(.headline)
                    .fontWeight(.regular)
                Spacer()
            }
            Divider()
        }
    }
}

struct TopicView_Previews: PreviewProvider {
    static var previews: some View {
        TopicView(title: "⌨️ #programming")
            .preferredColorScheme(.dark)
    }
}
