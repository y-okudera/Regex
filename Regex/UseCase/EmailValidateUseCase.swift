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
        let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"

        // 正規表現オブジェクトの生成
        guard let regex = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive) else {
            return false
        }

        // 入力文字列に一致する範囲を取得
        let range = NSRange(location: 0, length: email.utf16.count)

        // 正規表現に一致する文字列を検索
        let matches = regex.matches(in: email, options: [], range: range)

        return matches.count > 0
    }

}
