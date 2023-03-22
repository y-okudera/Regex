//
//  LoginViewBuilder.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/19.
//

import Domain
import SwiftUI

enum LoginViewBuilder {
    static func build(appState: AppState) -> LoginView {

        let presenter = LoginPresenter(appState: appState)

        var view = LoginView()
        view.presenter = presenter
        return view
    }
}

