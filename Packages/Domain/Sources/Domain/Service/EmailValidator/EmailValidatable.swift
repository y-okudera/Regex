//
//  EmailValidatable.swift
//  Domain
//
//  Created by Yuki Okudera on 2023/03/23.
//

import Foundation

public protocol EmailValidatable {
    /// メールアドレス形式の文字列かどうか
    static func validate(_ input: String) -> Bool
}
