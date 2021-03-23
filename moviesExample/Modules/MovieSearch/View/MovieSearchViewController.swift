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
    
    /// View which contains the loading text and the spinner
    let loadingView = UIView()

    /// Spinner shown during load the TableView
    let spinner = UIActivityIndicatorView()

    /// Text shown during load the TableView
    let loadingLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
//        presenter?.searchInMovies(search: "a", page: 1)
        moviesSearchBar.delegate = self
        // Do any additional setup after loading the view.
    }
    
    // Set the activity indicator into the main view
    private func setLoadingScreen() {

        // Sets the view which contains the loading text and the spinner
        let width: CGFloat = 120
        let height: CGFloat = 30
        let x = (moviesTableView.frame.width / 2) - (width / 2)
        let y = (moviesTableView.frame.height / 2) - (height / 2) - (navigationController?.navigationBar.frame.height)!
        loadingView.frame = CGRect(x: x, y: y, width: width, height: height)

        // Sets loading text
        loadingLabel.textColor = .gray
        loadingLabel.textAlignment = .center
        loadingLabel.text = "Cargando..."
        loadingLabel.frame = CGRect(x: 0, y: 0, width: 140, height: 30)

        // Sets spinner
        spinner.style = .gray
        spinner.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        spinner.startAnimating()

        // Adds text and spinner to the view
        loadingView.addSubview(spinner)
        loadingView.addSubview(loadingLabel)

        moviesTableView.addSubview(loadingView)

    }

    // Remove the activity indicator from the main view
    private func removeLoadingScreen() {

        // Hides and stops the text and the spinner
        spinner.stopAnimating()
        spinner.isHidden = true
        loadingLabel.isHidden = true

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
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
        setLoadingScreen()
        presenter?.searchInMovies(search: searchBar.text!, page: 1)
    }
}

extension MovieSearchViewController: MovieSearchViewProtocol{
    func failInSearch() {
        removeLoadingScreen()
    }
    
    func showMoviesInSearch(movies: [Movie]) {
        removeLoadingScreen()
        self.movies = movies
        moviesTableView.reloadData()
    }
    
    
}
