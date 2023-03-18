//
//  RoundedButtonStyle.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import SwiftUI

struct RoundedButtonStyle: ButtonStyle {

    let bgColor: Color
    let fgColor: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: UIScreen.main.bounds.width - 32, height: 64)
            .font(.title)
            .background(bgColor)
            .foregroundColor(fgColor)
            .cornerRadius(8)
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
    }
}
