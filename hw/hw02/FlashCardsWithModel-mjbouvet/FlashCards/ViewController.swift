//
//  ViewController.swift
//  FlashCardsWithModel
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
   
    let myFlashCardModel = FlashCardModel()
    var count: Int  = 0
    
    
    @IBAction func showQuestion(_ sender: Any){
        let lQuestion : String = self.myFlashCardModel.getNextQuestion()
        
        self.questionLabel.text = lQuestion
        self.answerLabel.text = "(...try answering ...)"
        
        count = 1
    }
    
    @IBAction func showAnswer(_ sender: Any){
        if(count == 1){
            let lAnswer: String = self.myFlashCardModel.getAnswer()
            count = 0
            
            self.answerLabel.text = lAnswer
        }
        
       
    }

}

