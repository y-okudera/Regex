//
//  InjectedValues+Application.swift
//  UseCase
//
//  Created by Yuki Okudera on 2023/03/22.
//

import Injected

extension InjectedValues {
    public var emailValidateInteractor: EmailValidateUseCase {
        get { Self[EmailValidateInteractorKey.self] }
        set { Self[EmailValidateInteractorKey.self] = newValue }
    }

    public var passwordCharacterValidateInteractor: PasswordCharacterValidateUseCase {
        get { Self[PasswordCharacterValidateInteractorKey.self] }
        set { Self[PasswordCharacterValidateInteractorKey.self] = newValue }
    }

    public var passwordLengthValidateInteractor: PasswordLengthValidateUseCase {
        get { Self[PasswordLengthValidateInteractorKey.self] }
        set { Self[PasswordLengthValidateInteractorKey.self] = newValue }
    }
}

private struct EmailValidateInteractorKey: InjectionKey {
    static var currentValue: EmailValidateUseCase = EmailValidateInteractor()
}

private struct PasswordCharacterValidateInteractorKey: InjectionKey {
    static var currentValue: PasswordCharacterValidateUseCase = PasswordCharacterValidateInteractor()
}

private struct PasswordLengthValidateInteractorKey: InjectionKey {
    static var currentValue: PasswordLengthValidateUseCase = PasswordLengthValidateInteractor()
}
