//
//  MoviesRequestDTO.swift
//  moviesExample
//
//  Created by everis on 23/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation

struct MoviesQueryParam: Encodable {
    let api_key: String
    let page: Int
}
