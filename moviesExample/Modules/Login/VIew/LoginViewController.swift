//
//  LoginViewController.swift
//  moviesExample
//
//  Created by everis on 22/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var incorrectLoginLabel: UILabel!
    
    var presenter: LoginViewPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("asd")
        // Do any additional setup after loading the view.
    }

    @IBAction func loginApp(_ sender: Any) {
        incorrectLoginLabel.isHidden = true
        presenter?.loginToApp(user: userTextField.text!, password: passwordTextField.text!)
    }
    
}

extension LoginViewController: LoginViewProtocol {
    func failLogin() {
        incorrectLoginLabel.isHidden = false
    }
    
}
