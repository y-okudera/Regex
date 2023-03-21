//
//  EmailSettingViewBuilder.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/20.
//

import SwiftUI

enum EmailSettingViewBuilder {
    static func build() -> EmailSettingView {
        let viewModel = EmailSettingViewModel()

        let presenter = EmailSettingPresenter(viewModel: viewModel)

        var view = EmailSettingView(viewModel: viewModel)
        view.presenter = presenter
        return view
    }
}
