//
//  PasswordSettingView.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import SwiftUI

struct PasswordSettingView: View {

    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: PasswordSettingViewModel
    var presenter: PasswordSettingPresenter!

    init(viewModel: PasswordSettingViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            passwordField("パスワードを入力してください", text: $viewModel.password)
                .onChange(of: viewModel.password) { newValue in
                    presenter.apply(inputs: .onChangePasswordText(newValue))
                }

            passwordField("パスワードを再入力してください", text: $viewModel.confirmPassword)
                .onChange(of: viewModel.confirmPassword) { newValue in
                    presenter.apply(inputs: .onChangeConfirmPasswordText(newValue))
                }

            Button("設定", action: {
                // Pop
                presentationMode.wrappedValue.dismiss()
            })
            .disabled(!viewModel.isValid)
            .buttonStyle(RoundedButtonStyle.main)
        }
        .navigationTitle("PasswordSetting")
    }

    @ViewBuilder
    private func passwordField(_ titleKey: LocalizedStringKey, text: Binding<String>) -> some View {
        SecureField(titleKey, text: text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.asciiCapable)
            .padding(.horizontal)
    }

}

struct PasswordSettingView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordSettingView(viewModel: .init())
    }
}
