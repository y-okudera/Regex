//
//  PasswordValidateUseCase.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/17.
//

import Foundation

enum PasswordValidateUseCaseProvider {
    static func provide() -> PasswordValidateUseCase {
        return PasswordValidateInteractor()
    }
}

protocol PasswordValidateUseCase {
    /// 8文字以上の半角英数字または記号(/.@-!?)のみで構成されているかどうか判定する
    func execute(_ input: String) -> Bool
}

private struct PasswordValidateInteractor: PasswordValidateUseCase {
    func execute(_ input: String) -> Bool {

        // 正規表現パターン
        let pattern = #"^[A-Za-z0-9/.@!?-]{8,}$"#

        return input.range(of: pattern, options: .regularExpression) != nil
    }
}
