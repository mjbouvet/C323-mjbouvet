//
//  FlashCardModel.swift
//  FlashCardsWithModel
//
//  Created by Bouvette Jr, Michael John on 1/30/20.
//  Copyright © 2020 Michael Bouvette. All rights reserved.
//

import Foundation

class FlashCardModel{
    var currentQuestionIndex = 0
    var questions = ["How much is 7+7 ?", "In What country is Timbuktu ?", "What rotates when you ride a bike ?", "What is the capital of Kentucky", "What is 2+2", "If a tree falls in the woods and no one is there to hear it.. does it still make noise", "Is this a question I am making, just to take up space", "What year is it"]
    var answers = ["14", "Mali", "Wheels", "Frankfort", "4", "Yes, of course it does idiot", "Yes :(", "2020"]
    
    
    init(){
        
    }
    
    func getNextQuestion() -> String{
        self.currentQuestionIndex = self.currentQuestionIndex + 1
        
        if(self.currentQuestionIndex >= self.questions.count){
            self.currentQuestionIndex = 0
        }
        return self.questions[self.currentQuestionIndex]
    }
    
    func getAnswer() -> String{
        return self.answers[self.currentQuestionIndex]
    }
}
