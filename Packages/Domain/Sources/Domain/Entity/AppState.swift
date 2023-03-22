//
//  AppState.swift
//  Domain
//
//  Created by Yuki Okudera on 2023/03/18.
//

import Combine

/// Singe source of truth
public final class AppState: ObservableObject {
    public static let shared = AppState()
    private init() {}
    @Published public var isLogin = false
}
