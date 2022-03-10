//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    let quiz = [
        Question(text: "Strict e Classes são a mesma coisa?", answer: "False"),
        Question(text: "Ronaldinho jogou pela selecao brasileira?", answer: "True"),
        Question(text: "Brasil tem 6 copas do mundo?", answer: "False") ]
        
    
    var questionN = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }

    @IBAction func answerButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let dataAnswer = quiz[questionN].answer
        
        if userAnswer == dataAnswer {
            print("resposta correta")
            questionN += 1
        } else {
            print("resposta incorreta")
        }
        
        updateUi()
    }
    
    func updateUi() {
        
        textLabel.text = quiz[questionN].text
    }
    
}

