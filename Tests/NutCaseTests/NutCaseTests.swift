//
//  NutCaseTests.swift
//
//
//  Created by Drew Milloy on 2023-11-14
//

import XCTest
@testable import NutCase

final class NutCaseTests: XCTestCase {
    
    enum Constants {
        static let lowercaseSentence = "this is a lowercase sentence"
        static let uppercaseSentence = "THIS IS AN UPPERCASE SENTENCE"
        static let sentence = "This is a sentence"
        static let pascalSentence = "ThisIsAPascalCaseSentence"
        static let camelSentence = "thisIsACamelCaseSentence"
    }
}

//# MARK: given lowercase sentence

extension NutCaseTests {

    func testSentenceCase_givenLowercaseSentence() {
        XCTAssertEqual(
            Constants.lowercaseSentence.sentenceCased(),
            "This is a lowercase sentence")
    }
    
    func testPascalCase_givenLowercaseSentence() throws {
        XCTAssertEqual(
            Constants.lowercaseSentence.pascalCased(),
            "ThisIsALowercaseSentence")
    }
    
    func testCamelCase_givenLowercaseSentence() throws {
        XCTAssertEqual(
            Constants.lowercaseSentence.camelCased(),
            "thisIsALowercaseSentence")
    }
    
    func testTitleCase_givenLowercaseSentence() throws {
        XCTAssertEqual(
            Constants.lowercaseSentence.titleCased(),
            "This Is A Lowercase Sentence")
    }
    
    func testSnakeCase_givenLowercaseSentence() throws {
        XCTAssertEqual(
            Constants.lowercaseSentence.snakeCased(),
            "this_is_a_lowercase_sentence")
    }
    
    func testKebabCase_givenLowercaseSentence() throws {
        XCTAssertEqual(
            Constants.lowercaseSentence.kebabCased(),
            "this-is-a-lowercase-sentence")
    }
}

//# MARK: given uppercase sentence

extension NutCaseTests {

    func testSentenceCase_givenUppercaseSentence() {
        XCTAssertEqual(
            Constants.uppercaseSentence.sentenceCased(),
            "This is an uppercase sentence")
    }
    
    func testPascalCase_givenUppercaseSentence() throws {
        XCTAssertEqual(
            Constants.uppercaseSentence.pascalCased(),
            "ThisIsAnUppercaseSentence")
    }
    
    func testCamelCase_givenUppercaseSentence() throws {
        XCTAssertEqual(
            Constants.uppercaseSentence.camelCased(),
            "thisIsAnUppercaseSentence")
    }
    
    func testTitleCase_givenUppercaseSentence() throws {
        XCTAssertEqual(
            Constants.uppercaseSentence.titleCased(),
            "This Is An Uppercase Sentence")
    }
    
    func testSnakeCase_givenUppercaseSentence() throws {
        XCTAssertEqual(
            Constants.uppercaseSentence.snakeCased(),
            "this_is_an_uppercase_sentence")
    }
    
    func testKebabCase_givenUppercaseSentence() throws {
        XCTAssertEqual(
            Constants.uppercaseSentence.kebabCased(),
            "this-is-an-uppercase-sentence")
    }
}

//# MARK: given pascal case sentence

extension NutCaseTests {

    func testSentenceCase_givenPascalSentence() {
        XCTAssertEqual(
            Constants.pascalSentence.sentenceCased(),
            "This is a pascal case sentence")
    }
    
    func testCamelCase_givenPascalSentence() throws {
        XCTAssertEqual(
            Constants.pascalSentence.camelCased(),
            "thisIsAPascalCaseSentence")
    }
    
    func testTitleCase_givenPascalSentence() throws {
        XCTAssertEqual(
            Constants.pascalSentence.titleCased(),
            "This Is A Pascal Case Sentence")
    }
    
    func testSnakeCase_givenPascalSentence() throws {
        XCTAssertEqual(
            Constants.pascalSentence.snakeCased(),
            "this_is_a_pascal_case_sentence")
    }
    
    func testKebabCase_givenPascalSentence() throws {
        XCTAssertEqual(
            Constants.pascalSentence.kebabCased(),
            "this-is-a-pascal-case-sentence")
    }
}

//# MARK: given camel case sentence

extension NutCaseTests {

    func testSentenceCase_givenCamelSentence() {
        XCTAssertEqual(
            Constants.camelSentence.sentenceCased(),
            "This is a camel case sentence")
    }
    
    func testPascalCase_givenCamelSentence() throws {
        XCTAssertEqual(
            Constants.camelSentence.pascalCased(),
            "ThisIsACamelCaseSentence")
    }
    
    func testTitleCase_givenCamelSentence() throws {
        XCTAssertEqual(
            Constants.camelSentence.titleCased(),
            "This Is A Camel Case Sentence")
    }
    
    func testSnakeCase_givenCamelSentence() throws {
        XCTAssertEqual(
            Constants.camelSentence.snakeCased(),
            "this_is_a_camel_case_sentence")
    }
    
    func testKebabCase_givenCamelSentence() throws {
        XCTAssertEqual(
            Constants.camelSentence.kebabCased(),
            "this-is-a-camel-case-sentence")
    }
}
