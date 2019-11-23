//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Elan Kainen on 11/18/19.
//  Copyright © 2019 Elan Kainen. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func randomMoveGenerator() -> String {
        
        let moves = ["Rock", "Paper", "Scissors"]
        
        let random = moves[Int(arc4random_uniform(UInt32(moves.count)))]
    
        return random
    }
    
    @IBAction func rock(_ sender: Any) {

        let computerMove = randomMoveGenerator()
        let resultsVC: ResultsViewController
               
       resultsVC = storyboard?.instantiateViewController(identifier: "ResultsViewController") as! ResultsViewController
        
        switch computerMove {
        case "Rock":
            resultsVC.resultTxt = "Rock on Rock...Thats a tie!"
            resultsVC.imageName = "Tie"
        case "Paper":
            resultsVC.resultTxt = "Paper covers rock. You lose!"
            resultsVC.imageName = "PaperCoversRock"
        case "Scissors":
            resultsVC.resultTxt = "Rock beats Scissors. You win!"
            resultsVC.imageName = "RockCrushesScissors"
        default:
            print("Something alternative")
        }
        
        present(resultsVC, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultsVC = segue.destination as! ResultsViewController
        
        let computerMove = randomMoveGenerator()
                   
        if(segue.identifier == "paperSegue"){
            switch computerMove {
            case "Rock":
                resultsVC.resultTxt = "Paper covers rock. You win!"
                resultsVC.imageName = "PaperCoversRock"
            case "Paper":
                resultsVC.resultTxt = "Paper on Paper...Thats a tie!"
                resultsVC.imageName = "Tie"
            case "Scissors":
                resultsVC.resultTxt = "Scissors beats paper. You lose!"
                resultsVC.imageName = "ScissorsCutPaper"
            default:
                print("Something alternative")
            }
        }
        else {
            switch computerMove {
            case "Rock":
                resultsVC.resultTxt = "Rock beats Scissors. You lose!"
                resultsVC.imageName = "RockCrushesScissors"
            case "Paper":
                resultsVC.resultTxt = "Scissors beats paper. You win!"
                resultsVC.imageName = "ScissorsCutPaper"
            case "Scissors":
                resultsVC.resultTxt = "Scissors on Scissors...Thats a tie!"
                resultsVC.imageName = "Tie"
            default:
                print("Something alternative")
            }
        }
    }
    
    @IBAction func paper(_ sender: Any) {
        performSegue(withIdentifier: "paperSegue", sender: self)
    }
    
    @IBAction func scissors(_ sender: Any) {
        performSegue(withIdentifier: "scissorsSegue", sender: self)
    }
    
    
}

