//
//  SplitterTests.swift
//  
//
//  Created by Drew Milloy on 2023-11-14
//

import XCTest
@testable import NutCase

final class SplitterTests: XCTestCase {

    func testSplitStringContainingSpaces() {
        let inputString = "This is a string containing spaces"
        let expected = [
            "This",
            "is",
            "a",
            "string",
            "containing",
            "spaces"
        ]
        XCTAssertEqual(inputString.splitIntoWords(), expected)
    }

    func testSplitStringInSnakeCase() {
        let inputString = "this_is_a_snake_case_string"
        let expected = [
            "this",
            "is",
            "a",
            "snake",
            "case",
            "string"
        ]
        XCTAssertEqual(inputString.splitIntoWords(), expected)
    }

    func testSplitStringInKebabCase() {
        let inputString = "this-is-a-kebab-case-string"
        let expected = [
            "this",
            "is",
            "a",
            "kebab",
            "case",
            "string"
        ]
        XCTAssertEqual(inputString.splitIntoWords(), expected)
    }
    
    func testSplitStringInCamelCase() {
        let inputString = "thisIsACamelCaseString"
        let expected = [
            "this",
            "Is",
            "A",
            "Camel",
            "Case",
            "String"
        ]
        XCTAssertEqual(inputString.splitIntoWords(), expected)
    }
    
    func testSplitStringInPascalCase() {
        let inputString = "ThisIsAPascalCaseString"
        let expected = [
            "This",
            "Is",
            "A",
            "Pascal",
            "Case",
            "String"
        ]
        XCTAssertEqual(inputString.splitIntoWords(), expected)
    }
}
