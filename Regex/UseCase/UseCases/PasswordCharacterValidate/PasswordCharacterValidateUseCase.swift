//
//  PasswordCharacterValidateUseCase.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/21.
//

import Foundation

protocol PasswordCharacterValidateUseCase {
    /// 入力文字列がパスワードで使用可能な文字列で構成されているかどうか
    func execute(_ input: String) -> Bool
}
