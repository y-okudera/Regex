//
//  PasswordValidateUseCaseTests.swift
//  RegexTests
//
//  Created by Yuki Okudera on 2023/03/17.
//

import XCTest
@testable import Regex

final class PasswordValidateUseCaseTests: XCTestCase {

    func testValidInput() {
        let sut = PasswordValidateUseCaseProvider.provide()
        XCTAssertTrue(sut.execute("abc123/.@-!?"))
        XCTAssertTrue(sut.execute("abcdefghi"))
        XCTAssertTrue(sut.execute("/.@!?-1234"))
    }

    func testInvalidInput() {
        let sut = PasswordValidateUseCaseProvider.provide()
        XCTAssertFalse(sut.execute("abc"))
        XCTAssertFalse(sut.execute("1234567"))
        XCTAssertFalse(sut.execute("a!b@c#d$"))
        XCTAssertFalse(sut.execute("abcdefg "))
        XCTAssertFalse(sut.execute("あいうえお"))
    }
}
