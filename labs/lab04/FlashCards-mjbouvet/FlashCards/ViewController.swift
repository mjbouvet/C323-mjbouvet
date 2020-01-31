//
//  ViewController.swift
//  FlashCards
//
//  Created by Bouvette Jr, Michael John on 1/23/20.
//  Copyright © 2020 Michael Bouvette. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //Two new properties for the ViewController class:
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    var count: Int  = 0
    var arraycount: Int = 0
    let flashcardModel = FlashcardModel(questionArray: ["What is the capital of Kentucky", "What is the capital of Indiana"], answerArray: ["Frankfort", "Indianapolis"])
    
    
    @IBAction func showQuestion(_ sender: Any){
        self.questionLabel.text = flashcardModel.questionArray[arraycount]
        self.answerLabel.text = ""
        count = 1
    }
    
    @IBAction func showAnswer(_ sender: Any){
        if(count >= 1){
            self.answerLabel.text = flashcardModel.answerArray[arraycount]
            count = 0
            arraycount += 1
        }
    }

}

