//
//  Selection.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/20.
//

import Foundation

struct Selection<T> {
    /// isActiveフラグのBinding先として定義
    var isSelected: Bool
    var item: T? {
        didSet {
            // アイテムをセットしてフラグを更新
            isSelected = item != nil
        }
    }
    init(item: T?) {
        self.item = item
        isSelected = item != nil
    }
}
