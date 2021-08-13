//
//  City.swift
//  Rosemary
//
//  Created by Khoi Truong Minh on 8/12/21.
//

import Foundation

struct City {
    let id: Int
    let name: String
    let countryCode: String

    init(id: Int, name: String, countryCode: String) {
        self.id = id
        self.name = name
        self.countryCode = countryCode
    }
}
