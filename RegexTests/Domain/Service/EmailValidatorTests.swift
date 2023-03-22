//
//  EmailValidatorTests.swift
//  RegexTests
//
//  Created by Yuki Okudera on 2023/03/22.
//

import XCTest
@testable import Regex

final class EmailValidatorTests: XCTestCase {

    let sut = EmailValidator.self

    func testValidEmail() {
        XCTAssertTrue(sut.validate("test@example.com"))
    }

    func testInvalidEmail() {
        XCTAssertFalse(sut.validate("invalid.email"))
        XCTAssertFalse(sut.validate("あいうえお@example.com"))
        XCTAssertFalse(sut.validate("test１@example.com"))
        XCTAssertFalse(sut.validate("test @example.com"))
    }

    func testEmptyEmail() {
        XCTAssertFalse(sut.validate(""))
    }

}
