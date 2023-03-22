//
//  RootView.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import Domain
import SwiftUI

struct RootView: View {
    @EnvironmentObject private var appState: AppState

    var body: some View {
        ZStack {
            if appState.isLogin {
                AppTabView()
            } else {
                LoginViewBuilder.build(appState: appState)
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
