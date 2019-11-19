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
        
        let moves = ["Rock", "Paper", "Scissor"]
        
        let random = moves[Int(arc4random_uniform(UInt32(moves.count)))]
    
        return random
    }
    
    @IBAction func rock(_ sender: Any) {
        let computerMove = randomMoveGenerator()
        //use switch case here
    }
    
    @IBAction func paper(_ sender: Any) {
    }
    
    @IBAction func scissor(_ sender: Any) {
    }
}

