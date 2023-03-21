//
//  CheckmarkText.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/21.
//

import SwiftUI

struct CheckmarkText: View {

    @Binding private var isChecked: Bool
    private let text: String

    init(isChecked: Binding<Bool>, text: String) {
        _isChecked = isChecked
        self.text = text
    }

    var body: some View {
        HStack {
            Image(systemName: isChecked ? "checkmark.circle.fill" : "circle")
                .foregroundColor(isChecked ? .green : .red)
                .padding(.leading)
            Text(text)
                .foregroundColor(isChecked ? .black : .red)
                .font(.caption)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct CheckmarkText_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CheckmarkText(isChecked: .constant(true), text: "条件")
            CheckmarkText(isChecked: .constant(false), text: "条件")
        }
    }
}
