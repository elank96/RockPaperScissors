//
//  ResultViewController.swift
//  RockPaperScissors
//
//  Created by Elan Kainen on 11/18/19.
//  Copyright © 2019 Elan Kainen. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var winnerImage: UIImageView!
    
    var resultTxt: String = ""
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = resultTxt
        self.winnerImage.image = UIImage(named: imageName!)
    }
    
    @IBAction func playAgain(_ sender: Any) {
           dismiss(animated: true, completion: nil)
       }

}
