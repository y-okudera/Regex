//
//  MenuPresenter.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import Foundation
import SwiftUI

final class MenuPresenter: Presenter {

    @ObservedObject private var viewModel: MenuViewModel

    init(viewModel: MenuViewModel) {
        self.viewModel = viewModel
    }
}

extension MenuPresenter {

    enum Inputs {
        case didTapMenu(ValidationMenus)
    }

    func apply(inputs: Inputs) {
        switch inputs {
        case .didTapMenu(let validationMenu):
            viewModel.selection = .init(item: validationMenu)
        }
    }
}
