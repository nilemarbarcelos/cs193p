//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nilemar de Barcelos on 20/07/2020.
//  Copyright © 2020 Nilemar Barcelos. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // MARK: Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: Intents
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
