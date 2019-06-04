//
//  Ujjwal_TicTacToeGame.swift
//  Ujjwal_Yellow_TicTacToe
//
//  Created by Ujjwal Bhasin on 2019-06-04.
//  Copyright © 2019 Ujjwal Bhasin. All rights reserved.
//

import Foundation

class Ujjwal_TicTacToeGame {
    
    var WhoseTurnIsIt = "X"
    var squareContents = Array (repeating: "", count: 9)
    var numberOfMovesPlayed = 0
    
    let winningCombos = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6]
    ]
    
    func playMove(_ tag: Int){
        numberOfMovesPlayed += 1
        let location = tag - 1
        
        if(WhoseTurnIsIt == "X"){
            // X marked
            squareContents[location] = "X"
            WhoseTurnIsIt = "O"
        } else {
            // O Marked
            squareContents[location] = "O"
            WhoseTurnIsIt = "X"
            }
        }
    
    func checkIfTheGameIsOver() -> Bool {
        let checkFor  = WhoseTurnIsIt == "X" ? "O" : "X"
        
        for winningCombo in winningCombos {
            if (squareContents[winningCombo[0]] == checkFor
            && squareContents[winningCombo[1]] == checkFor
                && squareContents[winningCombo[2]] == checkFor) {
                saveGame(whoWon: checkFor)
        return true
            }
            if (numberOfMovesPlayed == 9){
                saveGame(whoWon: "Draw")
            }
    }
return false
}
    // save game
    func saveGame(whoWon: String) {
        //
        let numberOfGamesPlayed =
        UserDefaults.standard.integer(forKey: Constants.NUMBER_OF_GAMES_PLAYED) + 1
        
        UserDefaults.standard.set(numberOfGamesPlayed, forKey: Constants.NUMBER_OF_GAMES_PLAYED )
        
        UserDefaults.standard.set(whoWon, forKey: Constants.WHO_WON + String(numberOfGamesPlayed))
    }
}
struct Constants {
    static let NUMBER_OF_GAMES_PLAYED = "num_games"
    static let WHO_WON = "who_won"
}
