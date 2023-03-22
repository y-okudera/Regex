//
//  EmailValidateInteractor.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/22.
//

import Domain
import Foundation

struct EmailValidateInteractor: EmailValidateUseCase {
    func execute(_ input: String) -> Bool {
        return EmailValidator.validate(input)
    }
}
