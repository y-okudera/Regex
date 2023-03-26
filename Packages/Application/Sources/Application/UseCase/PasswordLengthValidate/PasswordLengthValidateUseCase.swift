//
//  PasswordLengthValidateUseCase.swift
//  Application
//
//  Created by Yuki Okudera on 2023/03/21.
//

import Foundation

public protocol PasswordLengthValidateUseCase {
    /// 入力文字列がパスワードの長さ条件を満たしているかどうか
    func execute(_ input: String) -> Bool
}
