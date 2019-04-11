//
//  TweetViewModel.swift
//  Code_Challenge
//
//  Created by Jason wang on 3/25/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import Foundation

class TweetViewModel {

    private let tweet: Tweet

    init(tweet: Tweet) {
        self.tweet = tweet
    }

    var handler: String {
        return tweet.user
    }

    var content: String {
        return tweet.content
    }

}
