//
//  LogableViewProtocol.swift
//  Code_Challenge
//
//  Created by Jason wang on 3/25/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import Foundation

enum Result {
    case success
    case failture(message: String)
}

protocol LogableView: class {
    func login(userName: String, password: String, completion: @escaping (Result)-> Void)
}
