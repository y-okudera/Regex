//
//  EmailValidateUseCase.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/17.
//

import Foundation

protocol EmailValidateUseCase {
    /// 文字列がメールアドレス形式であるかどうかを判定する
    func execute(_ input: String) -> Bool
}
