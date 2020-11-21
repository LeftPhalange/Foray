//
//  PostView.swift
//  Foray
//
//  Created by Ethan Bovard on 11/21/20.
//

import SwiftUI

struct PostView: View {
    var Title: String
    var Author: String
    var PostContent: String
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("in ⌨️ #programming")
                        .font(.subheadline)
                        .fontWeight(.heavy)
                    Spacer()
                }
                Divider()
                HStack {
                    Text("@coder • 1 hour ago")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Spacer()
                }
                HStack {
                    Text("How do I set up Python?")
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                }
                HStack {
                    Text("Hey #programming, you may be bad enough to tackle coding, but are you bad enough to rescue the president? This is my first dive into programming and looked at languages that looked easy enough, and Python sure enough was one of them. How do I get started? Thanks.")
                        .font(.subheadline)
                    Spacer()
                }
                VStack {
                    HStack {
                        Text("COMMENTS (0)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    VStack {
                        Button (action: reply) {
                            Text("Reply to this thread")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.right")
                            Spacer()
                        }
                    }
                    Divider()
                    ScrollView {
                        CommentNode(Author: "coder_0", Content: "test", TimeDate: Date())
                        CommentNode(Author: "coder_0", Content: "test", TimeDate: Date())
                        CommentNode(Author: "coder_0", Content: "test", TimeDate: Date())
                        CommentNode(Author: "coder_0", Content: "test", TimeDate: Date())
                        CommentNode(Author: "coder_0", Content: "test", TimeDate: Date())
                    }
                }
                .padding(.top)
                Spacer()
            }
            .padding([.top, .leading, .trailing])
            .navigationBarTitle("Post", displayMode: .inline)
        }
    }
    func reply () {
        
    }
}

struct CommentNode: View {
    var Author: String
    var Content: String
    var TimeDate: Date
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.circle.fill")
                    .foregroundColor(.white)
                Text("@\(Author)")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("6 minutes ago")
                    .font(.footnote)
                    .fontWeight(.regular)
                Button (action: reply) {
                    Image(systemName: "arrowshape.turn.up.left.circle")
                    Text("Reply")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Spacer()
                }
                Spacer()
            }
            HStack {
                Text("\(Content)")
                    .font(.subheadline)
                    .fontWeight(.regular)
                Spacer()
            }
        }
        .padding(.bottom)
    }
    func reply () {
        
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(Title: "test", Author: "coder", PostContent: "hey guys I'm new here tf do I do")
            .preferredColorScheme(.dark)
    }
}
