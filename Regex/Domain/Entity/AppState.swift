//
//  AppState.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import Combine

/// Singe source of truth
final class AppState: ObservableObject {
    static let shared = AppState()
    private init() {}
    @Published var isLogin = false
}
