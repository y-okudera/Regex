//
//  EmailValidateUseCase.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/17.
//

import Foundation

enum EmailValidateUseCaseProvider {
    static func provide() -> EmailValidateUseCase {
        return EmailValidateInteractor()
    }
}

protocol EmailValidateUseCase {
    /// 文字列がメールアドレス形式であるかどうかを判定する
    func execute(_ input: String) -> Bool
}

private struct EmailValidateInteractor: EmailValidateUseCase {
    func execute(_ input: String) -> Bool {
        return EmailValidator.validate(input)
    }
}
