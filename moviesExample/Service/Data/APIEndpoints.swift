//
//  APIEndpoints.swift
//  ExampleMVVM
//
//  Created by Oleh Kudinov on 01.10.18.
//

import Foundation

struct APIEndpoints {
    
    static func getMovies(with moviesQueryParam: MoviesQueryParam) -> Endpoint<MoviesResponse> {

        return Endpoint(path: "3/movie/upcoming",
                        method: .get,
                        queryParametersEncodable: moviesQueryParam)
    }
}
