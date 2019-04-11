//
//  MainNavigationController.swift
//  Code_Challenge
//
//  Created by Jason wang on 3/24/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        _ = TwitterClient.shared.isLoggedIn.observeNext { [unowned self] (isLoggedIn) in
            if isLoggedIn {
                let viewModel = TweetFeedViewModel(client: TwitterClient.shared)
                self.viewControllers = [TweetFeedController(viewModel: viewModel)]
            } else {
                self.perform(#selector(self.showLoginVC), with: nil, afterDelay: 0.3)
            }
        }
    }

    @objc
    func showLoginVC() {
        let loginVC = LoginViewController(logableView: LoginViewModel(client: TwitterClient.shared))
        present(loginVC, animated: true, completion: nil)
    }
}
