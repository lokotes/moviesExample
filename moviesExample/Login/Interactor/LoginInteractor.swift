//
//  LoginInteractor.swift
//  moviesExample
//
//  Created by everis on 22/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation

class LoginInteractor: LoginInteractorProtocol {
    var presenter: LoginPresenterProtocol?
    
    func validateCredentials(user: String, password: String) {
        if user.MD5() == Constants.userName && password.MD5() == Constants.password {
            presenter?.validateSuccessLogin()
        }else{
            presenter?.failInValidateCredentials()
        }
    }
    
    
}
