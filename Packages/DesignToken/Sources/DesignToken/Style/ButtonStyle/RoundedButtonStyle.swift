//
//  RoundedButtonStyle.swift
//  DesignToken
//
//  Created by Yuki Okudera on 2023/03/18.
//

import SwiftUI

public struct RoundedButtonStyle: ButtonStyle {

    public static let main: Self = {
        .init(bgColor: .purple, fgColor: .white, disabledBgColor: .gray, disabledFgColor: .white)
    }()

    public init(bgColor: Color, fgColor: Color, disabledBgColor: Color, disabledFgColor: Color) {
        self.bgColor = bgColor
        self.fgColor = fgColor
        self.disabledBgColor = disabledBgColor
        self.disabledFgColor = disabledFgColor
    }

    @Environment(\.isEnabled) private var isEnabled: Bool

    private let bgColor: Color
    private let fgColor: Color
    private let disabledBgColor: Color
    private let disabledFgColor: Color

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            .font(.headline)
            .background(isEnabled ? bgColor : disabledBgColor)
            .foregroundColor(isEnabled ? fgColor : disabledFgColor)
            .cornerRadius(8)
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
    }
}
