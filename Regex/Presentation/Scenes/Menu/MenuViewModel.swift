//
//  MenuViewModel.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import Foundation

final class MenuViewModel: ObservableObject {
    @Published var selection = Selection<ValidationMenus>(item: nil)
}
