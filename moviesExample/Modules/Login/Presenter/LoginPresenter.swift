//
//  LoginPresenter.swift
//  moviesExample
//
//  Created by everis on 22/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation

class LoginPresenter: LoginViewPresenterProtocol {
    var interactor: LoginInteractorProtocol?
    var view: LoginViewProtocol?
    var router: LoginRouterProtocol?
    
    func loginToApp(user: String, password: String) {
        interactor?.validateCredentials(user: user, password: password)
    }
}

extension LoginPresenter: LoginPresenterProtocol {
    func validateSuccessLogin() {
        router?.goToHomeSearch()
    }
    
    func failInValidateCredentials() {
        view?.failLogin()
    }
}

