//
//  TweetFeedViewModel.swift
//  Code_Challenge
//
//  Created by Jason wang on 3/25/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import Foundation

class TweetFeedViewModel {

    private let twitterClient: TwitterClientType
    private(set) var tweetVMs: [TweetViewModel]

    var dataUpdated: (()-> Void)?

    var feedTitle: String {
        return "Tweet Feed"
    }

    init(client: TwitterClientType) {
        twitterClient = client
        self.tweetVMs = client.loadTimeline().map { TweetViewModel(tweet: $0) }
    }

    func logout() {
        twitterClient.logOut()
        tweetVMs.removeAll()
        dataUpdated?()
    }

}
