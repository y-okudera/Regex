//
//  PasswordCharacterValidatable.swift
//  Domain
//
//  Created by Yuki Okudera on 2023/03/23.
//

import Foundation

public protocol PasswordCharacterValidatable {
    /// 半角英数字と記号(/.@!?-)のみで構成された0文字以上の文字列かどうか
    static func validate(_ input: String) -> Bool
}
