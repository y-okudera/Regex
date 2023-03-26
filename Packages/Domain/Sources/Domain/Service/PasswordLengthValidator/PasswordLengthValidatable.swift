//
//  PasswordLengthValidatable.swift
//  Domain
//
//  Created by Yuki Okudera on 2023/03/23.
//

import Foundation

public protocol PasswordLengthValidatable {
    /// 8文字以上の文字列かどうか
    static func validate(_ input: String) -> Bool
}
