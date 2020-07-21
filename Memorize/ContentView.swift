//
//  ContentView.swift
//  Memorize
//
//  Created by Nilemar de Barcelos on 20/07/2020.
//  Copyright © 2020 Nilemar Barcelos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }.frame(minWidth: 0, maxWidth: 50, minHeight: 0, maxHeight: 75)
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(viewModel.cards.count / 2 == 5 ? .caption : .largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
