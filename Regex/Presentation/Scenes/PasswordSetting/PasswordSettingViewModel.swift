//
//  PasswordSettingViewModel.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/20.
//

import Foundation

final class PasswordSettingViewModel: ObservableObject {
    @Published var password = ""
    @Published var confirmPassword = ""
    @Published var isValidPassword = false
    @Published var isValidConfirmPassword = false

    var isValid: Bool {
        return password == confirmPassword && isValidPassword && isValidConfirmPassword
    }
}
