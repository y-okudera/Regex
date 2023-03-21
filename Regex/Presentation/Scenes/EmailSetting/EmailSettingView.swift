//
//  EmailSettingView.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/19.
//

import SwiftUI

struct EmailSettingView: View {

    @Environment(\.presentationMode) private var presentationMode
    @ObservedObject private var viewModel: EmailSettingViewModel
    var presenter: EmailSettingPresenter!

    init(viewModel: EmailSettingViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack(spacing: 8) {
            Text("メールアドレス")
                .font(.headline)
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)

            TextField("メールアドレスを入力してください", text: $viewModel.email)
                .font(.caption)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.asciiCapable)
                .padding(.horizontal)
                .onChange(of: viewModel.email) { newValue in
                    presenter.apply(inputs: .onChangeEmailText(newValue))
                }

            Spacer()
                .frame(height: 12)

            Text("メールアドレスの必須条件")
                .font(.footnote)
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)


            CheckmarkText(isChecked: $viewModel.isValidEmail, text: "正しいメールアドレス形式で入力されている")

            Button("設定", action: {
                presenter.apply(inputs: .onTapSettingButton)
            })
            .disabled(!viewModel.isValidEmail)
            .buttonStyle(RoundedButtonStyle.main)
        }
        .navigationTitle("EmailSetting")
        .alert(isPresented: $viewModel.isCompletedEmailSetting) {
            Alert(
                title: Text("メールアドレス設定完了"),
                message: Text("設定が完了しました。\n\nメールアドレス:\n\(viewModel.email)"),
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

struct EmailSettingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EmailSettingView(viewModel: .init())
        }
    }
}
