//
//  TweetFeedViewModelTests.swift
//  Code_ChallengeUnitTests
//
//  Created by Jason wang on 3/25/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import XCTest
@testable import Code_Challenge

class TweetFeedViewModelTests: XCTestCase {

    var feedViewModel = TweetFeedViewModel(client: TwitterClient.shared)

    override func setUp() {
    }

    override func tearDown() {
    }

    func testNumberOfTweets() {
        let expected = 22
        let result = feedViewModel.tweetVMs.count
        XCTAssertEqual(expected, result)

        feedViewModel.logout()

        XCTAssertEqual(0, feedViewModel.tweetVMs.count)

    }

}
