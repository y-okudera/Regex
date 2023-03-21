//
//  PasswordLengthValidateUseCase.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/21.
//

import Foundation

enum PasswordLengthValidateUseCaseProvider {
    static func provide() -> PasswordLengthValidateUseCase {
        return PasswordLengthValidateInteractor()
    }
}

protocol PasswordLengthValidateUseCase {
    /// 入力文字列がパスワードの長さ条件を満たしているかどうか
    func execute(_ input: String) -> Bool
}

private struct PasswordLengthValidateInteractor: PasswordLengthValidateUseCase {
    func execute(_ input: String) -> Bool {
        return PasswordLengthValidator.validate(input)
    }
}
