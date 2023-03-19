//
//  MenuView.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import SwiftUI

struct MenuView: View {

    @ObservedObject var viewModel: MenuViewModel
    var presenter: MenuPresenter!

    init(viewModel: MenuViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        ZStack {
            List {
                ForEach(ValidationMenus.allCases, id: \.rawValue) { validationMenu in
                    HStack {
                        Text(validationMenu.name)
                        Spacer()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        self.presenter.apply(inputs: .didTapMenu(validationMenu))
                    }
                }
            }
            .navigationTitle("Menu")

            navigationLinkIfPossible()
        }
    }

    @ViewBuilder
    private func navigationLinkIfPossible() -> some View {
        if let selectedItem = viewModel.selection.item {
            NavigationLink(
                destination: destination(selectedItem: selectedItem),
                isActive: $viewModel.selection.isSelected) {
                    EmptyView()
                }
        } else {
            EmptyView()
        }
    }

    @ViewBuilder
    private func destination(selectedItem: ValidationMenus) -> some View {
        switch selectedItem {
        case .email:
            Router.emailSetting
        case .password:
            Router.passwordSetting
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MenuViewBuilder.build()
        }
    }
}
