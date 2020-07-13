//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Lucas Danelon on 09/07/2020.
//  Copyright © 2020 Lucas Danelon. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃", "🕷"]
        return MemoryGame<String> (numbersOfCard: emojis.count) { pairIndex in
            return emojis[pairIndex]
            
        }
    }
    
    // MARK: - Access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
