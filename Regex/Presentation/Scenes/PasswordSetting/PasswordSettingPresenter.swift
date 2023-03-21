//
//  PasswordSettingPresenter.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/20.
//

import Foundation
import SwiftUI

final class PasswordSettingPresenter: Presenter {

    @ObservedObject private var viewModel: PasswordSettingViewModel
    private let passwordLengthValidateUseCase: PasswordLengthValidateUseCase
    private let passwordCharacterValidateUseCase: PasswordCharacterValidateUseCase

    init(
        viewModel: PasswordSettingViewModel,
        passwordLengthValidateUseCase: PasswordLengthValidateUseCase,
        passwordCharacterValidateUseCase: PasswordCharacterValidateUseCase
    ) {
        self.viewModel = viewModel
        self.passwordLengthValidateUseCase = passwordLengthValidateUseCase
        self.passwordCharacterValidateUseCase = passwordCharacterValidateUseCase
    }
}

extension PasswordSettingPresenter {

    enum Inputs {
        case onAppear
        case onChangePasswordText(String)
        case onTapSettingButton
    }

    func apply(inputs: Inputs) {
        switch inputs {
        case .onAppear:
            viewModel.isValidPasswordCharacters = passwordCharacterValidateUseCase.execute(viewModel.password)
            viewModel.isValidPasswordLength = passwordLengthValidateUseCase.execute(viewModel.password)
        case .onChangePasswordText(let password):
            viewModel.isValidPasswordCharacters = passwordCharacterValidateUseCase.execute(password)
            viewModel.isValidPasswordLength = passwordLengthValidateUseCase.execute(password)
        case .onTapSettingButton:
            viewModel.isCompletedPasswordSetting = true
        }
    }
}
