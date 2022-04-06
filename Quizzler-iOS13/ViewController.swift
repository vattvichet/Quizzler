//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var fasleButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        "4+2 = 6",
        "5-3 > 1",
        "3+8 < 10"
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        questionLabel.text = quiz[questionNumber]
        updateUI()
    }

    @IBAction func answerButton(_ sender: Any) {
        questionNumber += 1 //add one and one
        updateUI()
    }
    
    func updateUI() { //updateUI function used for update the question after the button got pressed.
        questionLabel.text = quiz[questionNumber]
    }
}

