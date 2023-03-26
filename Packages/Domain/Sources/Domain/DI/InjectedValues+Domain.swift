//
//  InjectedValues+Domain.swift
//  Domain
//
//  Created by Yuki Okudera on 2023/03/23.
//

import Injected

extension InjectedValues {
    public var emailValidator: EmailValidatable.Type {
        get { Self[EmailValidatorKey.self] }
        set { Self[EmailValidatorKey.self] = newValue }
    }

    public var passwordCharacterValidator: PasswordCharacterValidatable.Type {
        get { Self[PasswordCharacterValidatorKey.self] }
        set { Self[PasswordCharacterValidatorKey.self] = newValue }
    }

    public var passwordLengthValidator: PasswordLengthValidatable.Type {
        get { Self[PasswordLengthValidatorKey.self] }
        set { Self[PasswordLengthValidatorKey.self] = newValue }
    }
}

private struct EmailValidatorKey: InjectionKey {
    static var currentValue: EmailValidatable.Type = EmailValidator.self
}

private struct PasswordCharacterValidatorKey: InjectionKey {
    static var currentValue: PasswordCharacterValidatable.Type = PasswordCharacterValidator.self
}

private struct PasswordLengthValidatorKey: InjectionKey {
    static var currentValue: PasswordLengthValidatable.Type = PasswordLengthValidator.self
}
