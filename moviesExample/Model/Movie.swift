//
//  Moview.swift
//  moviesExample
//
//  Created by everis on 23/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation

class Movie {
    var id: Int
    var poster: String
    var name: String
    var release_date: String
    var overView: String
    var vote_average: Double
    
    init(movieResponse: ResultMV) {
        self.id = movieResponse.id
        self.poster = movieResponse.posterPath ?? ""
        self.name = movieResponse.originalTitle
        self.release_date = movieResponse.releaseDate
        self.overView = movieResponse.overview
        self.vote_average = movieResponse.voteAverage
    }
}
