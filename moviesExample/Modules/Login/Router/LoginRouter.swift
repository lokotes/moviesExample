//
//  LoginRouter.swift
//  moviesExample
//
//  Created by everis on 22/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation
import UIKit

class LoginRouter: LoginRouterProtocol {
    
    var view: LoginViewController?
    
    func createView() -> UIViewController {
        let view = mainStoryboard.instantiateViewController(withIdentifier: "loginViewControllerID") as? LoginViewController
        
        let presenter: LoginViewPresenterProtocol & LoginPresenterProtocol = LoginPresenter()
        
        let interactor: LoginInteractorProtocol = LoginInteractor()
        
        let router: LoginRouterProtocol = self
                
        view?.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        self.view = view
        return view!
    }
    
    var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    func goToHomeSearch() {
        view?.navigationController?.pushViewController(MovieSearchRouter().createView(), animated: true)
    }
    
}
