//
//  LoginViewModelTest.swift
//  Code_ChallengeUnitTests
//
//  Created by Jason wang on 3/25/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import XCTest
@testable import Code_Challenge

class LoginViewModelTest: XCTestCase {

    var loginViewModel = LoginViewModel(client: TwitterClient.shared)
    override func setUp() {

    }

    override func tearDown() {
        TwitterClient.shared.isLoggedIn.value = false
    }

    func testLoginWithUserNamdPW() {
        loginViewModel.login(userName: "user", password: "password", completion: { (result) in
            switch result {
            case .success:
                XCTAssert(true)
            case .failture(_):
                XCTAssert(false)
            }
        })
    }

    func testWrongUNandPW() {
        loginViewModel.login(userName: "user1", password: "password3", completion: { (result) in
            switch result {
            case .success:
                XCTAssert(false)
            case .failture(_):
                XCTAssert(true)
            }
        })
    }



}
