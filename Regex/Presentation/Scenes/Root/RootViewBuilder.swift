//
//  RootViewBuilder.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/19.
//

import Domain
import SwiftUI

enum RootViewBuilder {
    static func build(appState: AppState) -> some View {
        return RootView().environmentObject(appState)
    }
}
