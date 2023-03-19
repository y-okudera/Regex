//
//  EmailSettingView.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/19.
//

import SwiftUI

struct EmailSettingView: View {

    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: EmailSettingViewModel
    var presenter: EmailSettingPresenter!

    init(viewModel: EmailSettingViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack(spacing: 16) {
            emailField()
                .onChange(of: viewModel.email) { newValue in
                    presenter.apply(inputs: .onChangeEmailText(newValue))
                }

            Button("設定", action: {
                // Pop
                presentationMode.wrappedValue.dismiss()
            })
            .disabled(!viewModel.isValid)
            .buttonStyle(RoundedButtonStyle.main)
        }
        .navigationTitle("EmailSetting")
    }

    @ViewBuilder
    private func emailField() -> some View {
        TextField("メールアドレスを入力してください", text: $viewModel.email)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.asciiCapable)
            .padding(.horizontal)
    }

}

struct EmailSettingView_Previews: PreviewProvider {
    static var previews: some View {
        EmailSettingView(viewModel: .init())
    }
}
