//
//  EmailValidator.swift
//  Domain
//
//  Created by Yuki Okudera on 2023/03/21.
//

import Foundation

public enum EmailValidator: EmailValidatable {

    public static func validate(_ input: String) -> Bool {
        // 正規表現パターン
        let pattern = #"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}"#

        return input.range(of: pattern, options: .regularExpression) != nil
    }
}
