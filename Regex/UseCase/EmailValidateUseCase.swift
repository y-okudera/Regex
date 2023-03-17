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
    func execute(email: String) -> Bool
}

private struct EmailValidateInteractor: EmailValidateUseCase {

    func execute(email: String) -> Bool {

        // 正規表現パターン
        let pattern = #"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}"#

        return email.range(of: pattern, options: .regularExpression) != nil
    }

}
