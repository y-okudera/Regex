//
//  Presenter.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import Foundation

protocol Presenter {
    associatedtype Inputs
    
    func apply(inputs: Inputs)
}
