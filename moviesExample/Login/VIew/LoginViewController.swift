//
//  LoginViewController.swift
//  moviesExample
//
//  Created by everis on 22/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var presenter: LoginViewPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension LoginViewController: LoginViewProtocol {
    func failLogin() {
        
    }
    
}
