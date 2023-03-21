//
//  InjectionKey.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/22.
//

import Foundation

protocol InjectionKey {

    /// The associated type representing the type of the dependency injection key's value.
    associatedtype Value

    /// The default value for the dependency injection key.
    static var currentValue: Self.Value { get set }
}
