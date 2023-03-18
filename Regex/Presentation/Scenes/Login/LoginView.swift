//
//  LoginView.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import SwiftUI

struct LoginView: View {

    @StateObject var presenter: LoginPresenter

    init(appState: AppState) {
        _presenter = StateObject(wrappedValue: .init(appState: appState))
    }

    var body: some View {
        Button("Login", action: {
            self.presenter.apply(inputs: .didTapLoginButton)
        })
        .buttonStyle(RoundedButtonStyle(bgColor: .purple, fgColor: .white))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(appState: AppState())
    }
}
