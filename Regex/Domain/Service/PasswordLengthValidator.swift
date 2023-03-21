//
//  PasswordLengthValidator.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/21.
//

import Foundation

enum PasswordLengthValidator {

    /// 8文字以上の文字列かどうか
    static func validate(_ input: String) -> Bool {
        // 最小文字数
        let minLength = 8

        return input.count >= minLength
    }
}
