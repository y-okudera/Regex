//
//  PasswordLengthValidateUseCaseTests.swift
//  RegexTests
//
//  Created by Yuki Okudera on 2023/03/21.
//

import XCTest
@testable import Regex

final class PasswordLengthValidateUseCaseTests: XCTestCase {

    private var sut: PasswordLengthValidateUseCase!

    override func setUp() {
        super.setUp()
        sut = PasswordLengthValidateUseCaseProvider.provide()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testValidate() {
        XCTAssertTrue(sut.execute("password"))
        XCTAssertTrue(sut.execute("12345678"))
        XCTAssertFalse(sut.execute("1234567"))
        XCTAssertFalse(sut.execute("short"))
    }

}
