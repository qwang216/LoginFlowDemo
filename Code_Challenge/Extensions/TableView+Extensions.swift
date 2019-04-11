//
//  TableView+Extensions.swift
//  Code_Challenge
//
//  Created by Jason wang on 3/25/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

extension UITableView {
    func register<T: UITableViewCell>(_ T: T.Type) {
        register(T, forCellReuseIdentifier: T.reuseIdentifier)
    }

    func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Unable to dequeue cell ID: \(T.reuseIdentifier)")
        }
        return cell
    }
}

extension UITableViewCell: ReuseableView {}
