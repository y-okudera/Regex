//
//  PasswordLengthValidatorTests.swift
//  RegexTests
//
//  Created by Yuki Okudera on 2023/03/22.
//

import XCTest
@testable import Regex

final class PasswordLengthValidatorTests: XCTestCase {

    let sut = PasswordLengthValidator.self

    func testValidate() {
        XCTAssertTrue(sut.validate("password"))
        XCTAssertTrue(sut.validate("12345678"))
        XCTAssertFalse(sut.validate("1234567"))
        XCTAssertFalse(sut.validate("short"))
    }

}
