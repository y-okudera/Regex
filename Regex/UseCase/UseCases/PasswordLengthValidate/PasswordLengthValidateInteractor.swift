//
//  PasswordLengthValidateInteractor.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/22.
//

import Foundation

struct PasswordLengthValidateInteractor: PasswordLengthValidateUseCase {
    func execute(_ input: String) -> Bool {
        return PasswordLengthValidator.validate(input)
    }
}
