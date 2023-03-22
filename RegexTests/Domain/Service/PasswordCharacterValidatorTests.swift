//
//  PasswordCharacterValidatorTests.swift
//  RegexTests
//
//  Created by Yuki Okudera on 2023/03/22.
//

import XCTest
@testable import Regex

final class PasswordCharacterValidatorTests: XCTestCase {

    let sut = PasswordCharacterValidator.self

    func testValidate() {
        XCTAssertTrue(sut.validate("password123!@"))
        XCTAssertTrue(sut.validate("helloworld"))
        XCTAssertTrue(sut.validate("123456789"))
        XCTAssertTrue(sut.validate(".@!?-/"))
        XCTAssertTrue(sut.validate(""))
        XCTAssertFalse(sut.validate("パスワード"))
        XCTAssertFalse(sut.validate("password$%^"))
    }

}
