//
//  EmailValidateUseCaseTests.swift
//  RegexTests
//
//  Created by Yuki Okudera on 2023/03/17.
//

import XCTest
@testable import Regex

final class EmailValidateUseCaseTests: XCTestCase {

    private var sut: EmailValidateUseCase!

    override func setUp() {
        super.setUp()
        sut = EmailValidateUseCaseProvider.provide()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testValidEmail() {
        XCTAssertTrue(sut.execute(email: "test@example.com"))
    }

    func testInvalidEmail() {
        XCTAssertFalse(sut.execute(email: "invalid.email"))
        XCTAssertFalse(sut.execute(email: "あいうえお@example.com"))
        XCTAssertFalse(sut.execute(email: "test１@example.com"))
        XCTAssertFalse(sut.execute(email: "test @example.com"))
    }

    func testEmptyEmail() {
        XCTAssertFalse(sut.execute(email: ""))
    }

}