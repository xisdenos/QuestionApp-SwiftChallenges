//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Lucas Pinto on 10/03/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {

let quiz = [
    Question(q: "Strict e Classes são a mesma coisa?", a: "False"),
    Question(q: "Ronaldinho jogou pela selecao brasileira?", a: "True"),
    Question(q: "Brasil tem 6 copas do mundo?", a: "False") ]
    
    var questionNumber = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
    
}
