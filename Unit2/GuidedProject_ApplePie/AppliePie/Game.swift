//
//  Game.swift
//  AppliePie
//
//  Created by Samuel Embaye on 3/5/26.
//

import Foundation
struct Game{
    var word : String
    var incorrectMovesRemaining: Int
    var guessedLetter: [Character]
    mutating func playerGuess(_ letter: Character)
    {
        guessedLetter.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
    var farmattedWord: String {
            var guessedWord: String = ""
        for letter in word {
            if guessedLetter.contains(letter) {
              //  guessedWord.append(letter)
                guessedWord += "\(letter)"
            } else {
            guessedWord += " _"
            }
        }
        return guessedWord
        }
    
}
