//
//  PasswordCharacterValidateInteractor.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/22.
//

import Foundation

struct PasswordCharacterValidateInteractor: PasswordCharacterValidateUseCase {
    func execute(_ input: String) -> Bool {
        return PasswordCharacterValidator.validate(input)
    }
}
