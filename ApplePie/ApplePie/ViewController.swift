//
//  ViewController.swift
//  ApplePie
//
//  Created by VR on 02/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescet", "bug", "program"]
    
    var incorrectMovesAllowed: Int = 7
    
    var totalWins = 0 {
            didSet {
                newRound()
            }
        }
        var totalLosses = 0 {
            didSet {
                newRound()
            }
        }
    
    @IBOutlet weak var treeImageView: UIImageView!
    
    @IBOutlet weak var correctWordLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBOutlet var letterButtons: [UIButton]!
    
    var currentGame: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound();
    }
    
    func enableLetterButtons(_ enable: Bool) {
    for button in letterButtons {
        button.isEnabled = enable
        }
    }
    
    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game (word: newWord,
                                incorrectMovesRemaining: incorrectMovesAllowed,
                                guessedLetters: [])
            enableLetterButtons(true)
            updateUI ( )
        }
        else {
            enableLetterButtons(false)
        }
    }
    
    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWords {
            letters.append(String(letter))
        }
        let wordWithSpaces = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpaces
        scoreLabel.text = "Wins: \(totalWins)    Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter)
        updateGameState()
            
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        } else if currentGame.word == currentGame.formattedWords {
            totalWins += 1
            
        } else {
            updateUI()
        }
        
    }
}

