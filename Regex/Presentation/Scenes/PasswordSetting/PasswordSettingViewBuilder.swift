//
//  PasswordSettingViewBuilder.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/20.
//

import SwiftUI

enum PasswordSettingViewBuilder {
    static func build() -> PasswordSettingView {
        let viewModel = PasswordSettingViewModel()

        let presenter = PasswordSettingPresenter(
            viewModel: viewModel,
            passwordValidateUseCase: PasswordValidateUseCaseProvider.provide()
        )

        var view = PasswordSettingView(viewModel: viewModel)
        view.presenter = presenter
        return view
    }
}
