//
//  MovieSearchViewController.swift
//  moviesExample
//
//  Created by everis on 23/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import UIKit

class MovieSearchViewController: UIViewController {

    @IBOutlet weak var moviesSearchBar: UISearchBar!
    @IBOutlet weak var moviesTableView: UITableView!
    var presenter: MovieSearchViewPresenterProtocol?
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.searchInMovies(search: "a", page: 1)
        // Do any additional setup after loading the view.
    }
    

}

extension MovieSearchViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCellID") as? MovieTableViewCell
        cell?.movieLabel.text = movies[indexPath.row].name
        return cell!
    }
    
}

extension MovieSearchViewController: UISearchBarDelegate{
}

extension MovieSearchViewController: MovieSearchViewProtocol{
    func failInSearch() {
        
    }
    
    func showMoviesInSearch(movies: [Movie]) {
        self.movies = movies
        moviesTableView.reloadData()
    }
    
    
}
