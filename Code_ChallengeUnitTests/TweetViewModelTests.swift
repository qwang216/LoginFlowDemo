//
//  TweetViewModelTests.swift
//  Code_ChallengeUnitTests
//
//  Created by Jason wang on 3/25/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import XCTest
@testable import Code_Challenge

class TweetViewModelTests: XCTestCase {

    let tweetVM = TweetViewModel(tweet:
        Tweet(id: 7, content: "I feel bad for my dog. I'll be dating a girl for months and then she's just gone and he has no idea why", user: "Bryan Pan"))

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTwitterHandler() {
        let expected = "Bryan Pan"
        let result = tweetVM.handler
        XCTAssertEqual(expected, result)
    }

    func testTweetContent() {
        let expected = "I feel bad for my dog. I'll be dating a girl for months and then she's just gone and he has no idea why"
        let result = tweetVM.content
        XCTAssertEqual(expected, result)
    }

}
