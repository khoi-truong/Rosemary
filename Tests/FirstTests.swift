//
//  RosemaryTests.swift
//  RosemaryTests
//
//  Created by Khoi Truong Minh on 7/27/21.
//

import XCTest
@testable import Rosemary
@testable import RosemaryMocks

final class FirstTests: XCTestCase {

    func testExample() {
        let mockCity = City.mock()
        XCTAssertEqual(mockCity.id, 1)
    }
}
