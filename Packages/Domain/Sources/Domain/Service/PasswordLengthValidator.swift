//
//  PasswordLengthValidator.swift
//  Domain
//
//  Created by Yuki Okudera on 2023/03/21.
//

import Foundation

public enum PasswordLengthValidator {

    /// 8文字以上の文字列かどうか
    public static func validate(_ input: String) -> Bool {
        // 最小文字数
        let minLength = 8

        return input.count >= minLength
    }
}
