//
//  Ujjwal_GameViewController.swift
//  Ujjwal_Yellow_TicTacToe
//
//  Created by Ujjwal Bhasin on 2019-05-28.
//  Copyright © 2019 Ujjwal Bhasin. All rights reserved.
//

import UIKit

class Ujjwal_GameViewController: UIViewController {
    
    var theGameModel = Ujjwal_TicTacToeGame()
    var gameIsOver = false

    @IBOutlet weak var whoIsNext: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func squareTouched(_ sender: UIButton) {
        print("Button Touched")
        print(sender.tag)
        
        
        if(sender.currentTitle == nil) && !gameIsOver{
        sender.setTitle(theGameModel.WhoseTurnIsIt, for: .normal)
        theGameModel.playMove(sender.tag)
            
            
            if(theGameModel.checkIfTheGameIsOver()){
                if (theGameModel.gameWinner == "Draw") {
                    whoIsNext.text = "It's a Draw"
                } else {
                    whoIsNext.text = theGameModel.gameWinner + " Won!"
                }
                
                gameIsOver = true
                
            } else {
                whoIsNext.text = theGameModel.WhoseTurnIsIt + "'s Turn"
            }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
