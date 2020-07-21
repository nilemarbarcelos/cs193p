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
        let emojis = ["👻", "🎃", "🕷", "🙀", "👹", "🌜", "🌛", "🤕", "🍟", "🍿", "☕️"]
        var emojisAlreadyAdded = Array<Int>()
        
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2...5)) { _ in
            var emojiIndex: Int
            repeat {
                emojiIndex = Int.random(in: 0...emojis.count - 1)
            } while (emojisAlreadyAdded.contains(emojiIndex))
            emojisAlreadyAdded.append(emojiIndex)
            return emojis[emojiIndex]
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
