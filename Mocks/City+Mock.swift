//
//  City+Mock.swift
//  Rosemary
//
//  Created by Khoi Truong Minh on 8/13/21.
//

import Foundation
@testable import Rosemary

extension City {

    public static func mock() -> City {
        City(id: 1, name: "Hanoi", countryCode: "VN")
    }
}
