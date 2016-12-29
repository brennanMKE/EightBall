//
//  EightBallKitTests.swift
//  EightBallKitTests
//
//  Created by Brennan Stehling on 12/28/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

import XCTest
@testable import EightBallKit

class EightBallKitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRandomClassicResults() {
        let results = Results()
        for _ in 1...10 {
            let result = results.randomClassicResult()
            print("Result: \(result)")
            XCTAssertTrue(result.characters.count > 0)
        }
    }

}
