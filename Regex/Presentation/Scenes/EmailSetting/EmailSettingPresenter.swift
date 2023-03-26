//
//  EmailSettingPresenter.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/20.
//

import Application
import Foundation
import Injected
import SwiftUI

final class EmailSettingPresenter: Presenter {

    @ObservedObject private var viewModel: EmailSettingViewModel
    @Injected(\.emailValidateInteractor) var emailValidateInteractor: EmailValidateUseCase

    init(viewModel: EmailSettingViewModel) {
        self.viewModel = viewModel
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
            viewModel.isValidEmail = emailValidateInteractor.execute(email)
        case .onTapSettingButton:
            viewModel.isCompletedEmailSetting = true
        }
    }
}
