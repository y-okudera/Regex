//
//  PasswordValidateUseCaseTests.swift
//  RegexTests
//
//  Created by Yuki Okudera on 2023/03/17.
//

import XCTest
@testable import Regex

final class PasswordValidateUseCaseTests: XCTestCase {

    private var sut: PasswordValidateUseCase!

    override func setUp() {
        super.setUp()
        sut = PasswordValidateUseCaseProvider.provide()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testValidInput() {
        XCTAssertTrue(sut.execute("abc123/.@-!?"))
        XCTAssertTrue(sut.execute("abcdefghi"))
        XCTAssertTrue(sut.execute("/.@!?-1234"))
    }

    func testInvalidInput() {
        XCTAssertFalse(sut.execute("abc"))
        XCTAssertFalse(sut.execute("1234567"))
        XCTAssertFalse(sut.execute("a!b@c#d$"))
        XCTAssertFalse(sut.execute("abcdefg "))
        XCTAssertFalse(sut.execute("あいうえお"))
        XCTAssertFalse(sut.execute("１２３４５６７８９０"))
        XCTAssertFalse(sut.execute("12345678９0"))
        XCTAssertFalse(sut.execute("12345678 0"))
    }

}
