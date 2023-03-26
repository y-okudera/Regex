//
//  PasswordLengthValidateInteractor.swift
//  Application
//
//  Created by Yuki Okudera on 2023/03/22.
//

import Domain
import Foundation

public struct PasswordLengthValidateInteractor: PasswordLengthValidateUseCase {
    public init() {}
    public func execute(_ input: String) -> Bool {
        return PasswordLengthValidator.validate(input)
    }
}
