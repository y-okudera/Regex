//
//  RoundedButtonStyle.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import SwiftUI

struct RoundedButtonStyle: ButtonStyle {

    static let main: Self = {
        .init(bgColor: .purple, fgColor: .white, disabledBgColor: .gray, disabledFgColor: .white)
    }()

    @Environment(\.isEnabled) var isEnabled: Bool

    let bgColor: Color
    let fgColor: Color
    let disabledBgColor: Color
    let disabledFgColor: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            .font(.headline)
            .background(isEnabled ? bgColor : disabledBgColor)
            .foregroundColor(isEnabled ? fgColor : disabledFgColor)
            .cornerRadius(8)
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
    }
}
