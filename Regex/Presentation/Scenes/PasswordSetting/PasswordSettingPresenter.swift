//
//  PasswordSettingPresenter.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/20.
//

import Application
import Foundation
import Injected
import SwiftUI

final class PasswordSettingPresenter: Presenter {

    @ObservedObject private var viewModel: PasswordSettingViewModel
    @Injected(\.passwordLengthValidateInteractor) var passwordLengthValidateInteractor: PasswordLengthValidateUseCase
    @Injected(\.passwordCharacterValidateInteractor) var passwordCharacterValidateInteractor: PasswordCharacterValidateUseCase

    init(viewModel: PasswordSettingViewModel) {
        self.viewModel = viewModel
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
            viewModel.isValidPasswordCharacters = passwordCharacterValidateInteractor.execute(viewModel.password)
            viewModel.isValidPasswordLength = passwordLengthValidateInteractor.execute(viewModel.password)
        case .onChangePasswordText(let password):
            viewModel.isValidPasswordCharacters = passwordCharacterValidateInteractor.execute(password)
            viewModel.isValidPasswordLength = passwordLengthValidateInteractor.execute(password)
        case .onTapSettingButton:
            viewModel.isCompletedPasswordSetting = true
        }
    }
}
