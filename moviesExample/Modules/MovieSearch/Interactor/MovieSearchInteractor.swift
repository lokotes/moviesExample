//
//  MovieSearchInteractor.swift
//  moviesExample
//
//  Created by everis on 23/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation

class MovieSearchInteractor: MovieSearchInteractorProtocol {
    var presenter: MovieSearchPresenterProtocol?
    var dataManager: MoviesDataSourceProtocol!
    
    init() {
        dataManager = DataSourceManager()
    }
    
    func searchInMovies(search: String, page: Int) {
        dataManager.fetchMoviesInfo(searchText: search, page: page, callbackHandler: { result in
            
            switch result {
                
            case .success(let response):
                var movies: [Movie] = []
                for movierest in response.results {
                    let movie = Movie(movieResponse: movierest)
                    movies.append(movie)
                }
                self.presenter?.didReceivedMovies(movies: movies, numberOfPages: response.totalPages)
                
            case .failure(let error):
                self.presenter?.failInSearch()
            }
        })
    }
    
    
}
