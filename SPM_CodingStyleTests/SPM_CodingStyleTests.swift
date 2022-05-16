//
//  SPM_CodingStyleTests.swift
//  SPM_CodingStyleTests
//
//  Created by Михаил Киржнер on 16.05.2022.
//

import XCTest
@testable import SPM_CodingStyle

class SPM_CodingStyleTests: XCTestCase {

    func testCamelCase() throws {
        @CodingStyle(codingCase: CodingCase.camelCase) var myProperty = "Hello World"
        XCTAssertEqual(myProperty, "HelloWorld")
    }
    
    func testSnakeCase() throws {
        @CodingStyle(codingCase: CodingCase.snakeCase) var myProperty = "Hello World"
        XCTAssertEqual(myProperty, "Hello_World")
    }
    
    func testKebabCase() throws {
        @CodingStyle(codingCase: CodingCase.kebabCase) var myProperty = "Hello World"
        XCTAssertEqual(myProperty, "Hello-World")
    }
}
