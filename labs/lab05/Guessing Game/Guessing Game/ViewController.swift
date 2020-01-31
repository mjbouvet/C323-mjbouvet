//
//  ViewController.swift
//  Guessing Game
//
//  Created by Bouvette Jr, Michael John on 1/28/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    var input = " "
    var numberToBeGuessed = Int( arc4random_uniform(10))
    var answer = Int(arc4random_uniform(20))
    var answerinput = " "
    var count = 0
    @IBOutlet var answernumber: UILabel!

    
    @IBAction func genHigherRandom(_ sender: Any){
        numberToBeGuessed +=  Int(arc4random_uniform(UInt32(20 - numberToBeGuessed)))
        input = String(numberToBeGuessed)
        self.numberLabel.text = input
        
           count += 1
        
        if(numberToBeGuessed == answer){
            answerinput = String(numberToBeGuessed)
            self.answerLabel.text = "It took \(count) tries and the answer is \(answerinput)"
        }
        
        answerinput = String(answer)
        self.answernumber.text = answerinput
        
     
        
    }
    
    @IBAction func genLowerRandom(_ sender: Any){
        numberToBeGuessed -= Int( arc4random_uniform(UInt32(numberToBeGuessed)))
        input = String(numberToBeGuessed)
        self.numberLabel.text = input
        
        count += 1
        
        if(numberToBeGuessed == answer)
        {
            answerinput = String(numberToBeGuessed)
            self.answerLabel.text = "It took \(count) tries and the answer is \(answerinput)"
        }
        
        answerinput = String(answer)
        self.answernumber.text = answerinput
        
        
    }
}

