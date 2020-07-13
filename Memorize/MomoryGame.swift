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
            cards.append(Card(content: content, id: indexCards*2))
            cards.append(Card(content: content, id: indexCards*2+1))
        }
    }
    
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = true
        var content: CardContent
        var id: Int
    }
}
