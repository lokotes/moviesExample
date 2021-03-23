//
//  DataSourceManager.swift
//  moviesExample
//
//  Created by everis on 23/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation

typealias CustomResponse<T: Codable> = (Result<T, Error>) -> Void

protocol MoviesDataSourceProtocol {
    func fetchMoviesInfo(searchText: String, page: Int, callbackHandler: @escaping CustomResponse<MoviesResponse>)
}

class DataSourceManager: MoviesDataSourceProtocol {
    
    private let dataTransferService: DataTransferService

    init(dataTransferService: DataTransferService) {
        self.dataTransferService = AppConfigurationService.shared.apiDataTransferService
    }
    
    func fetchMoviesInfo(searchText: String, page: Int, callbackHandler: @escaping CustomResponse<MoviesResponse>) {
        let endpoint = APIEndpoints.getMovies(with: MoviesQueryParam(searchText: searchText, api_key: "2696829a81b1b5827d515ff121700838", page: page))
            _ = self.dataTransferService.request(with: endpoint) { result in
                switch result {
                case .success(let response):
//                    self.cache.save(response: responseDTO, for: requestDTO)
                    callbackHandler(.success(response))
                case .failure(let error):
                    callbackHandler(.failure(error))
                }
            }
    }
    


}
