//
//  UnmaskableSecureField.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/21.
//

import SwiftUI

struct UnmaskableSecureField: View {

    @Binding private var text: String
    @State private var isSecured: Bool = true
    private var title: String

    init(_ title: String, text: Binding<String>) {
        self.title = title
        _text = text
    }

    var body: some View {
        ZStack(alignment: .trailing) {
            Group {
                isSecured
                ? AnyView(SecureField(title, text: $text))
                : AnyView(TextField(title, text: $text))
            }
            .font(.caption)
            .keyboardType(.asciiCapable)
            .padding(.all, 8)
            .padding(.trailing, 24)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(lineWidth: 0.25)
            )
            .padding(.horizontal, 16)

            Button(action: {
                isSecured.toggle()
            }) {
                Image(systemName: self.isSecured ? "eye.slash" : "eye")
                    .accentColor(.gray)
            }
            .padding(.horizontal, 24)
        }
    }
}

struct UnmaskableSecureField_Previews: PreviewProvider {
    static var previews: some View {
        UnmaskableSecureField("パスワードを入力してください", text: .constant("password01234"))
    }
}
