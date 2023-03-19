//
//  PasswordSettingPresenter.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/20.
//

import Foundation
import SwiftUI

final class PasswordSettingPresenter: Presenter {

    @ObservedObject var viewModel: PasswordSettingViewModel
    let passwordValidateUseCase: PasswordValidateUseCase

    init(viewModel: PasswordSettingViewModel, passwordValidateUseCase: PasswordValidateUseCase) {
        self.viewModel = viewModel
        self.passwordValidateUseCase = passwordValidateUseCase
    }
}

extension PasswordSettingPresenter {

    enum Inputs {
        case onChangePasswordText(String)
        case onChangeConfirmPasswordText(String)
    }

    func apply(inputs: Inputs) {
        switch inputs {
        case .onChangePasswordText(let password):
            viewModel.isValidPassword = passwordValidateUseCase.execute(password)
        case .onChangeConfirmPasswordText(let confirmPassword):
            viewModel.isValidConfirmPassword = passwordValidateUseCase.execute(confirmPassword)
        }
    }
}
