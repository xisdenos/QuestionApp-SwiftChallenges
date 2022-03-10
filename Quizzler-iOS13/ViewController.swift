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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "Strict e Classes são a mesma coisa?"
    }

    @IBAction func answerButton(_ sender: UIButton) {
        
    }
    
}

