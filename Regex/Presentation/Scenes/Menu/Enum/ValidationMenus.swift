//
//  ValidationMenus.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/20.
//

import Foundation

enum ValidationMenus: Int, CaseIterable {
    case email
    case password

    var name: String {
        switch self {
        case .email:
            return "Email validation"
        case .password:
            return "Password validation"
        }
    }
}
