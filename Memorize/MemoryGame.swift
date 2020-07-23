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
    
   mutating func choose(card: Card) {
        print("choose card \(card)")
    let chooseIndex: Int = self.index(of: card)
    self.cards[chooseIndex].isFaceUp = !self.cards[chooseIndex].isFaceUp
    
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<self.cards.count {
            if self.cards[index].id == card.id {
                return index
            }
        }
        return 0 // TODO: Bug!
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
