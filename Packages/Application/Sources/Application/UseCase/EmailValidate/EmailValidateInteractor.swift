//
//  EmailValidateInteractor.swift
//  Application
//
//  Created by Yuki Okudera on 2023/03/22.
//

import Domain
import Foundation
import Injected

public struct EmailValidateInteractor: EmailValidateUseCase {
    @Injected(\.emailValidator) var emailValidator: EmailValidatable.Type

    public init() {}
    public func execute(_ input: String) -> Bool {
        return emailValidator.validate(input)
    }
}
