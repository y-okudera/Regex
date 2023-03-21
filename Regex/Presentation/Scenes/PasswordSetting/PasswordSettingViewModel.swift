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
    @Published var isValidPasswordCharacters = false
    @Published var isValidPasswordLength = false
    var isValidConfirmPassword: Bool {
        return password == confirmPassword
    }

    @Published var isCompletedPasswordSetting = false
}
