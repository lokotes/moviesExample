//
//  MovieSearchPresenter.swift
//  moviesExample
//
//  Created by everis on 23/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation

class MovieSearchPresenter: MovieSearchViewPresenterProtocol {
    func searchInMovies(search: String, page: Int) {
        interactor?.searchInMovies(search: search, page: page)
    }
    
    var interactor: MovieSearchInteractorProtocol?
    var view: MovieSearchViewProtocol?
    var router: MovieSearchRouterProtocol?
    
}

extension MovieSearchPresenter: MovieSearchPresenterProtocol {
    func didReceivedMovies(movies: [Movie], numberOfPages: Int) {
        
    }
    
    func failInSearch() {
        
    }
    
}
