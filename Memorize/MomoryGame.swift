//
//  MomoryGame.swift
//  Memorize
//
//  Created by Lucas Danelon on 09/07/2020.
//  Copyright © 2020 Lucas Danelon. All rights reserved.
//

import Foundation


struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("choose card \(card)")
    }
    
    init(numbersOfCard: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for indexCards in 0..<numbersOfCard {
            let content = cardContentFactory(indexCards)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
        }
    }
    
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
