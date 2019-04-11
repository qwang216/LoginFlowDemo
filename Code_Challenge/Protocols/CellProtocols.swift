//
//  Protocols.swift
//  Code_Challenge
//
//  Created by Jason wang on 3/25/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

protocol ReuseableView {}
extension ReuseableView where Self: UITableViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
