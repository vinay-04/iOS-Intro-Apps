//
//  Game.swift
//  ApplePie
//
//  Created by VR on 02/09/24.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWords: String {
        var guessedWord: String = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord.append(letter)
            } else {
                guessedWord.append("_")
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(_ letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}

