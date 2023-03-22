//
//  Router.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import Domain
import SwiftUI

extension Identifiable where Self: Hashable {
    typealias ID = Self
    var id: Self { self }
}

enum Router: View, Hashable, Identifiable {

    case root
    case login
    case menu
    case emailSetting
    case passwordSetting

    var body: some View {
        switch self {
        case .root:
            return AnyView(RootViewBuilder.build(appState: AppState.shared))
        case .login:
            return AnyView(LoginViewBuilder.build(appState: AppState.shared))
        case .menu:
            return AnyView(MenuViewBuilder.build())
        case .emailSetting:
            return AnyView(EmailSettingViewBuilder.build())
        case .passwordSetting:
            return AnyView(PasswordSettingViewBuilder.build())
        }
    }

}
