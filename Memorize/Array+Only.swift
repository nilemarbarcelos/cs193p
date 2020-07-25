//
//  Array+Only.swift
//  Memorize
//
//  Created by Nilemar de Barcelos on 25/07/2020.
//  Copyright © 2020 Nilemar Barcelos. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
