//
//  MovieSearchProtocol.swift
//  moviesExample
//
//  Created by everis on 23/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation
import UIKit

/// VIEW - PRESENTER
protocol MovieSearchViewPresenterProtocol: class {
    
    var interactor: MovieSearchInteractorProtocol? { get set }
    var view: MovieSearchViewProtocol? { get set }
    var router: MovieSearchRouterProtocol? { get set }
    
    func searchInMovies(search: String, page: Int)

}

/// PRESENTER - INTERACTOR
protocol MovieSearchInteractorProtocol: class {
    var presenter: MovieSearchPresenterProtocol? {get set}
    func searchInMovies(search: String, page: Int)

}

/// INTERACTOR - PRESENTER
protocol MovieSearchPresenterProtocol: class {
    func didReceivedMovies(movies: [Movie], numberOfPages: Int)
    func failInSearch()
}

/// PRESENTER - VIEW
protocol MovieSearchViewProtocol: class {
    func failInSearch()
    func showMoviesInSearch(movies: [Movie])
}

/// PRESENTER - ROUTER
protocol MovieSearchRouterProtocol: class {
    func createView() -> UIViewController
    func goToDetail(movie: Movie)
}
