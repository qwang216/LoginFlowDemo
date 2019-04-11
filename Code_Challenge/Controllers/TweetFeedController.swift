//
//  TweetFeedController.swift
//  Code_Challenge
//
//  Created by Jason wang on 3/25/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class TweetFeedController: UIViewController {

    let tableView = UITableView()

    private(set) var viewModel: TweetFeedViewModel

    init(viewModel: TweetFeedViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = viewModel.feedTitle

        setupTableView()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Log Out", style: .done, target: self, action: #selector(handleLogout))

        viewModel.dataUpdated = { [unowned self] in
            self.tableView.reloadData()
        }
    }

    @objc
    func handleLogout() {
        viewModel.logout()
    }

    func setupTableView() {
        view.addSubview(tableView)
        tableView.fillToSuperView()
        tableView.dataSource = self
        tableView.register(TweetCell.self)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.allowsSelection = false
    }
}

extension TweetFeedController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.tweetVMs.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as TweetCell
        cell.viewModel = viewModel.tweetVMs[indexPath.row]
        return cell
    }


}
