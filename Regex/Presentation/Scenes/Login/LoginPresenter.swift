//
//  LoginPresenter.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import Foundation

final class LoginPresenter: ObservableObject {

    private let appState: AppState

    init(appState: AppState) {
        self.appState = appState
    }
}

extension LoginPresenter {

    enum Inputs {
        case didTapLoginButton
    }

    func apply(inputs: Inputs) {
        switch inputs {
        case .didTapLoginButton:
            appState.isLogin = true
        }
    }
}
