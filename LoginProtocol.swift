//
//  LoginProtocol.swift
//  moviesExample
//
//  Created by everis on 22/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation
import UIKit

/// VIEW - PRESENTER
protocol LoginViewPresenterProtocol: class {
    
    var interactor: LoginInteractorProtocol? { get set }
    var view: LoginViewProtocol? { get set }
    var router: LoginRouterProtocol? { get set }
    
    func loginToApp(user: String, password: String)

}

/// PRESENTER - INTERACTOR
protocol LoginInteractorProtocol: class {
    var presenter: LoginPresenterProtocol? {get set}
    func validateCredentials(user: String, password: String)
}

/// INTERACTOR - PRESENTER
protocol LoginPresenterProtocol: class {
    func validateSuccessLogin()
    func failInValidateCredentials()
}

/// PRESENTER - VIEW
protocol LoginViewProtocol: class {
    func failLogin()
}

/// PRESENTER - ROUTER
protocol LoginRouterProtocol: class {
    func createView() -> UIViewController
    func goToHomeSearch()
}
