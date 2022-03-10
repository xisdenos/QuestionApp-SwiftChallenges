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
    
    var quizBrain = QuizBrain()
    var questionN = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }

    @IBAction func answerButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        if quizBrain.checkAnswer(userAnswer) {
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
        
        textLabel.text = quizBrain.quiz[questionN].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        progressBar.progress = Float(questionN + 1) / Float(quizBrain.quiz.count)
    }
    
}

