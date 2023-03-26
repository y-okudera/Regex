//
//  PasswordCharacterValidator.swift
//  Domain
//
//  Created by Yuki Okudera on 2023/03/21.
//

import Foundation

public enum PasswordCharacterValidator: PasswordCharacterValidatable {

    public static func validate(_ input: String) -> Bool {
        // 正規表現パターン
        let pattern = #"^[a-zA-Z0-9/.@!?-]*$"#

        return input.range(of: pattern, options: .regularExpression) != nil
    }
}
