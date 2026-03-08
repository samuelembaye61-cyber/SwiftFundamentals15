//
//  ViewController.swift
//  AppliePie
//
//  Created by Samuel Embaye on 3/3/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var treeImageview: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    var listOfWords = ["buccaneer", "swift", "glorious", "bugs", "programs"]
      
    let incorrertMovesAllowed = 7
    var totalWins: Int = 0 {
        didSet{
            newround()
        }
    }
    var totalLosse: Int = 0 {
        didSet{
            newround()
        }
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newround()
        print(listOfWords)
        // Do any additional setup after loading the view.
        
    }
@IBAction func letterButton(_ sender: UIButton) {
    sender.isEnabled = false
    let letterString = sender.configuration!.title!
    let letter: Character = Character(letterString.lowercased())
    currentGame.playerGuess(letter)
    updateUI()
    updateGamestate()
    }
    func enableLetterButtons(_ enabled: Bool) {
        for button in letterButtons {
            button.isEnabled = enabled
        }
    }
    var currentGame: Game!

    func newround() {
        if !listOfWords.isEmpty {
            
            let newWord = listOfWords.randomElement()!
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrertMovesAllowed, guessedLetter: [])
           // enableLetterButtons(true)
            updateUI()
        }
        else {
          //  enableLetterButtons(false) 
        }
    }
func updateUI() {
    var letters = [String] ()
    for letter in currentGame.farmattedWord {
        letters.append(String(letter))
    }
    _ = letters.joined(separator: " ")
    correctWordLabel.text = currentGame.farmattedWord
    
    scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosse)"
    treeImageview.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    
    }
    
    func updateGamestate()
    {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosse += 1
        }
        else if currentGame.word == currentGame.farmattedWord {
            totalWins += 1
        }
        updateUI()
    }
   
}

