//
//  PasswordSettingView.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import DesignToken
import SwiftUI

struct PasswordSettingView: View {

    @Environment(\.presentationMode) private var presentationMode
    @ObservedObject private var viewModel: PasswordSettingViewModel
    var presenter: PasswordSettingPresenter!

    init(viewModel: PasswordSettingViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack(spacing: 8) {
            Text("パスワード")
                .font(.headline)
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)

            UnmaskableSecureField("パスワードを入力してください", text: $viewModel.password)
                .onChangeText(textDidChange: { newValue in
                    presenter.apply(inputs: .onChangePasswordText(newValue))
                })

            Text("確認用パスワード")
                .font(.headline)
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)

            UnmaskableSecureField("パスワードを再入力してください", text: $viewModel.confirmPassword)

            Spacer()
                .frame(height: 12)

            Text("パスワードの必須条件")
                .font(.footnote)
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)


            CheckmarkText(isChecked: $viewModel.isValidPasswordLength, text: "8文字以上")
            CheckmarkText(isChecked: $viewModel.isValidPasswordCharacters, text: "半角英数字と記号(/.@!?-)のみ")
            CheckmarkText(isChecked: .constant(viewModel.isValidConfirmPassword), text: "確認用パスワードが一致している")

            Button("設定", action: {
                presenter.apply(inputs: .onTapSettingButton)
            })
            .disabled(
                !viewModel.isValidPasswordCharacters
                || !viewModel.isValidPasswordLength
                || !viewModel.isValidConfirmPassword
            )
            .buttonStyle(RoundedButtonStyle.main)
        }
        .navigationTitle("PasswordSetting")
        .onAppear {
            presenter.apply(inputs: .onAppear)
        }
        .alert(isPresented: $viewModel.isCompletedPasswordSetting) {
            Alert(
                title: Text("パスワード設定完了"),
                message: Text("設定が完了しました。\n\nパスワード:\n\(viewModel.password)"),
                dismissButton: .default(
                    Text("閉じる"),
                    action: {
                        // Pop
                        presentationMode.wrappedValue.dismiss()
                    }
                )
            )
        }
    }
}

struct PasswordSettingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PasswordSettingView(viewModel: .init())
        }
    }
}
