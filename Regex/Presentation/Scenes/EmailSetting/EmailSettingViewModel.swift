//
//  EmailSettingViewModel.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/20.
//

import Foundation

final class EmailSettingViewModel: ObservableObject {
    @Published var email = ""
    @Published var isValid = false
}
