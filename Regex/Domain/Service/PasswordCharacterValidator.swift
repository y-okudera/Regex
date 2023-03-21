//
//  PasswordCharacterValidator.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/21.
//

import Foundation

enum PasswordCharacterValidator {

    /// 半角英数字と記号(/.@!?-)のみで構成された0文字以上の文字列かどうか
    static func validate(_ input: String) -> Bool {
        // 正規表現パターン
        let pattern = #"^[a-zA-Z0-9/.@!?-]*$"#

        return input.range(of: pattern, options: .regularExpression) != nil
    }
}
