//
//  PasswordCharacterValidateUseCaseTests.swift
//  RegexTests
//
//  Created by Yuki Okudera on 2023/03/21.
//

import XCTest
@testable import Regex

final class PasswordCharacterValidateUseCaseTests: XCTestCase {

    @Injected(\.passwordCharacterValidateInteractor) var sut: PasswordCharacterValidateUseCase

    func testValidate() {
        XCTAssertTrue(sut.execute("password123!@"))
        XCTAssertTrue(sut.execute("helloworld"))
        XCTAssertTrue(sut.execute("123456789"))
        XCTAssertTrue(sut.execute(".@!?-/"))
        XCTAssertTrue(sut.execute(""))
        XCTAssertFalse(sut.execute("パスワード"))
        XCTAssertFalse(sut.execute("password$%^"))
    }

}
