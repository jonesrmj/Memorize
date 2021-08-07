//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Ryan Jones on 8/1/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
  let game = EmojiMemoryGame()
  
  var body: some Scene {
    WindowGroup {
      ContentView(viewModel: game)
    }
  }
}
