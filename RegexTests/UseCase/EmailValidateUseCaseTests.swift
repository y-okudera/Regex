//
//  EmailValidateUseCaseTests.swift
//  RegexTests
//
//  Created by Yuki Okudera on 2023/03/17.
//

import XCTest
@testable import Regex

final class EmailValidateUseCaseTests: XCTestCase {

    @Injected(\.emailValidateInteractor) var sut: EmailValidateUseCase

    func testValidEmail() {
        XCTAssertTrue(sut.execute("test@example.com"))
    }

    func testInvalidEmail() {
        XCTAssertFalse(sut.execute("invalid.email"))
        XCTAssertFalse(sut.execute("あいうえお@example.com"))
        XCTAssertFalse(sut.execute("test１@example.com"))
        XCTAssertFalse(sut.execute("test @example.com"))
    }

    func testEmptyEmail() {
        XCTAssertFalse(sut.execute(""))
    }

}
