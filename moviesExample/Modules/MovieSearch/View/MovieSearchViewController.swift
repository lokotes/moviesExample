//
//  MovieSearchViewController.swift
//  moviesExample
//
//  Created by everis on 23/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import UIKit

class MovieSearchViewController: UIViewController {

    var presenter: MovieSearchViewPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.searchInMovies(search: "a", page: 1)
        // Do any additional setup after loading the view.
    }
    

}

extension MovieSearchViewController: MovieSearchViewProtocol{
    func failInSearch() {
        
    }
    
    func showMoviesInSearch(movies: [Movie]) {
        
    }
    
    
}
