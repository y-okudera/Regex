//
//  MenuViewBuilder.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/19.
//

import SwiftUI

enum MenuViewBuilder {
    static func build() -> MenuView {
        let viewModel = MenuViewModel()

        let presenter = MenuPresenter(viewModel: viewModel)

        var view = MenuView(viewModel: viewModel)
        view.presenter = presenter
        return view
    }
}
