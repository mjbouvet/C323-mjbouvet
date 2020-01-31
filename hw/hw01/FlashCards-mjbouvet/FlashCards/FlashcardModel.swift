//
//  FlashcardModel.swift
//  FlashCards
//
//  Created by Bouvette Jr, Michael John on 1/23/20.
//  Copyright © 2020 Michael Bouvette. All rights reserved.
//

import UIKit

class FlashcardModel {
    
    
    var questionArray: [String] = []
    var answerArray: [String] = []
    
    init(questionArray: [String], answerArray: [String]){
        self.questionArray = questionArray
        self.answerArray = answerArray
    }
    
}
