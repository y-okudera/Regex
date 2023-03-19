//
//  LoginView.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import SwiftUI

struct LoginView: View {

    var presenter: LoginPresenter!

    var body: some View {
        Button("ログイン", action: {
            self.presenter.apply(inputs: .didTapLoginButton)
        })
        .buttonStyle(RoundedButtonStyle.main)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
