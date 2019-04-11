//
//  LoginController.swift
//  Code_Challenge
//
//  Created by Jason wang on 3/25/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    let userNameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Username"
        tf.borderStyle = .roundedRect
        return tf
    }()

    let passwordTextField: UITextField = {
        let pwtf = UITextField()
        pwtf.borderStyle = .roundedRect
        pwtf.isSecureTextEntry = true
        pwtf.placeholder = "Password"
        return pwtf
    }()

    lazy var loginButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Login", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .blue
        bt.addTarget(self, action: #selector(handleLoginButton), for: .touchUpInside)
        return bt
    }()

    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.spacing = 5
        return sv
    }()

    let loginVM: LogableView

    init(logableView: LogableView) {
        self.loginVM = logableView
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        view.addSubview(stackView)
        stackView.addArrangedSubview(userNameTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(loginButton)
        stackView.anchor(leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 10, bottom: 0, right: 10))
        stackView.verticallyCenterSuperView(offSetBy: -40)
    }

    @objc
    func handleLoginButton() {
        guard let userName = userNameTextField.text, let password = passwordTextField.text else { return }
        loginVM.login(userName: userName, password: password) { [unowned self] (result) in
            switch result {
            case .success:
                self.dismiss(animated: true, completion: nil)
            case .failture(let msg):
                let alertController = UIAlertController(title: "Error", message: msg, preferredStyle: .alert)
                let action = UIAlertAction(title: "Okay", style: .cancel, handler: nil)
                alertController.addAction(action)
                self.present(alertController, animated: true, completion: nil)
            }
        }
        passwordTextField.resignFirstResponder()
        userNameTextField.resignFirstResponder()

    }


}
