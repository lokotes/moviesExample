//
//  MovieRouter.swift
//  moviesExample
//
//  Created by everis on 23/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation
import UIKit

class MovieSearchRouter: MovieSearchRouterProtocol {
    func goToDetail(movie: Movie) {
        
    }
    
    
    func createView() -> UIViewController {
        let view = mainStoryboard.instantiateViewController(withIdentifier: "movieSearchViewControllerID") as? MovieSearchViewController
        
        let presenter: MovieSearchViewPresenterProtocol & MovieSearchPresenterProtocol = MovieSearchPresenter()
        
        let interactor: MovieSearchInteractorProtocol = MovieSearchInteractor()
        
        let router: MovieSearchRouterProtocol = self
                
        view?.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view!
    }
    
    var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
}
