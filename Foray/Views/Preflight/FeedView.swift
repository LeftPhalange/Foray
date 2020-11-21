//
//  FeedView.swift
//  Foray
//
//  Created by Ethan Bovard on 11/21/20.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    FeedCategory(Category: FeedCategoryType.justPosted, Topic: "⌨️ #programming", PostList: [PostNode(Author: "coder", Title: "How to get started in Python?", Timestamp: Date()), PostNode(Author: "coder_0", Title: "ENOENT \"File not found\" error in React Native", Timestamp: Date()), PostNode(Author: "coder_1", Title: "How to get Xcode?", Timestamp: Date())])
                    FeedCategory(Category: FeedCategoryType.justPosted, Topic: "🖥 #building", PostList: [PostNode(Author: "coder", Title: "Water or aircooled system?", Timestamp: Date())])
                }
            }
            .navigationBarTitle("Feed", displayMode: .large)
        }
    }
}

// Additional structs and enums to encapsulate UI controls
enum FeedCategoryType {
    case new, trending, justPosted
}

struct PostNode: View {
    var Author: String
    var Title: String
    var Timestamp: Date
    var body: some View {
        VStack {
            HStack {
                Text("@\(Author)")
                    .fontWeight(.semibold)
                Text("3 hours ago")
                    .fontWeight(.regular)
                Spacer()
            }
            HStack {
                Text("\(Title)")
                    .font(.title3)
                    .fontWeight(.bold)
                Spacer()
                Image (systemName: "chevron.right")
            }
        }
    }
}

struct FeedCategory: View {
    var Category: FeedCategoryType
    var Topic: String
    var PostList: [PostNode]
    var body: some View {
        VStack {
            HStack {
                Text("\(self.returnTitleSubset(Topic: Topic, Category: Category))")
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
            }
            Divider()
            ForEach((0..<PostList.count), id: \.self) { post in
                PostNode(Author: PostList[post].Author, Title: PostList[post].Title, Timestamp: PostList[post].Timestamp)
                    .font(.subheadline)
                Divider()
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4.0)
    }
    func returnTitleSubset (Topic: String, Category: FeedCategoryType) -> (String) {
        if (Category == FeedCategoryType.new) {
            return "New in \(Topic)"
        }
        else if (Category == FeedCategoryType.justPosted) {
            return "Just posted in \(Topic)"
        }
        else {
            return "Trending in \(Topic)"
        }
    }
    func returnTimePosted () -> (String) {
        // TODO: return value using Date object
        return "3 hours ago"
    }
}

struct LeftAlignedText: View {
    var TextBlock: Text
    var body: some View {
        HStack {
            TextBlock
            Spacer()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
            .preferredColorScheme(.dark)
    }
}
