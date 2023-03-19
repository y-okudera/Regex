//
//  EmailSettingPresenter.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/20.
//

import Foundation
import SwiftUI

final class EmailSettingPresenter: Presenter {

    @ObservedObject var viewModel: EmailSettingViewModel
    let emailValidateUseCase: EmailValidateUseCase

    init(viewModel: EmailSettingViewModel, emailValidateUseCase: EmailValidateUseCase) {
        self.viewModel = viewModel
        self.emailValidateUseCase = emailValidateUseCase
    }
}

extension EmailSettingPresenter {

    enum Inputs {
        case onChangeEmailText(String)
    }

    func apply(inputs: Inputs) {
        switch inputs {
        case .onChangeEmailText(let email):
            viewModel.isValid = emailValidateUseCase.execute(email: email)
        }
    }
}
