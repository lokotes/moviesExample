//
//  Utils.swift
//  moviesExample
//
//  Created by everis on 22/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation
import CryptoKit

class Utils {
    
    static func MD5(string: String)-> String {
        let digest = Insecure.MD5.hash(data: string.data(using: .utf8) ?? Data())

        return digest.map {
            String(format: "%02hhx", $0)
        }.joined()
    }
}
