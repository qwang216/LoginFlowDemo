//
//  TweetCell.swift
//  Code_Challenge
//
//  Created by Jason wang on 3/25/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {

    private let handler: UILabel = {
        let lb = UILabel()
        lb.text = "Handler Name"
        lb.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        lb.numberOfLines = 1
        return lb
    }()

    private let content: UILabel = {
        let lb = UILabel()
        lb.text = "This is a content label"
        lb.numberOfLines = 0
        lb.lineBreakMode = .byWordWrapping
        return lb
    }()

    private let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        return sv
    }()

    var viewModel: TweetViewModel? {
        didSet {
            handler.text = viewModel?.handler
            content.text = viewModel?.content
        }
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        stackView.addArrangedSubview(handler)
        stackView.addArrangedSubview(content)
        contentView.addSubview(stackView)
        stackView.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, padding: .init(top: 8, left: 8, bottom: 8, right: 8))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
