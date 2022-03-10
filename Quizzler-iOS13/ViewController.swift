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
        Question(q: "Strict e Classes são a mesma coisa?", a: "False"),
        Question(q: "Ronaldinho jogou pela selecao brasileira?", a: "True"),
        Question(q: "Brasil tem 6 copas do mundo?", a: "False") ]
        
    
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
            sender.backgroundColor = UIColor.green
            questionN += 1
        } else {
            print("resposta incorreta")
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateUi), userInfo: nil, repeats: false)
    
    }
    
    @objc func updateUi() {
        
        textLabel.text = quiz[questionN].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
}

