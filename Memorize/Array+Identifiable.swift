//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Nilemar de Barcelos on 25/07/2020.
//  Copyright © 2020 Nilemar Barcelos. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
