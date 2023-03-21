//
//  EmailSettingPresenter.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/20.
//

import Foundation
import SwiftUI

final class EmailSettingPresenter: Presenter {

    @ObservedObject private var viewModel: EmailSettingViewModel
    private let emailValidateUseCase: EmailValidateUseCase

    init(viewModel: EmailSettingViewModel, emailValidateUseCase: EmailValidateUseCase) {
        self.viewModel = viewModel
        self.emailValidateUseCase = emailValidateUseCase
    }
}

extension EmailSettingPresenter {

    enum Inputs {
        case onChangeEmailText(String)
        case onTapSettingButton
    }

    func apply(inputs: Inputs) {
        switch inputs {
        case .onChangeEmailText(let email):
            viewModel.isValidEmail = emailValidateUseCase.execute(email)
        case .onTapSettingButton:
            viewModel.isCompletedEmailSetting = true
        }
    }
}
