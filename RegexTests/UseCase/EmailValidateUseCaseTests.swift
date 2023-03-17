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
        let email = "test@example.com"
        XCTAssertTrue(sut.execute(email: email))
    }

    func testInvalidEmail() {
        let email = "invalid.email"
        XCTAssertFalse(sut.execute(email: email))
    }

    func testEmptyEmail() {
        let email = ""
        XCTAssertFalse(sut.execute(email: email))
    }

}
