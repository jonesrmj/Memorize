//
//  MemoryGame.swift
//  Memorize
//
//  Created by Ryan Jones on 8/6/21.
//

import Foundation

struct MemoryGame<CardContent> {
  var cards: Array<Card>
  
  func choose(_ card: Card) {
    
  }
  
  init (numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
    cards = Array<Card>()
    // add numberOfPairsOfCards x 2 cards to cards array
    for pairIndex in 0..<numberOfPairsOfCards {
      let content = createCardContent(pairIndex)
      cards.append(Card(content: content))
      cards.append(Card(content: content))
    }
  }
  
  struct Card {
    var isFaceUp: Bool = false
    var isMached: Bool = false
    var content: CardContent
  }
}
