//
//  LoginViewModel.swift
//  Code_Challenge
//
//  Created by Jason wang on 3/25/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import Foundation

class LoginViewModel: LogableView {

    private let twitterClient: TwitterClientType
    init(client: TwitterClientType) {
        twitterClient = client
    }

    func login(userName: String, password: String, completion: @escaping (Result) -> Void) {
        twitterClient.logIn(username: userName, password: password)
        if twitterClient.isLoggedIn.value {
            completion(.success)
        } else {
            completion(.failture(message: "Invalid Login, Please try again."))
        }
    }
}
