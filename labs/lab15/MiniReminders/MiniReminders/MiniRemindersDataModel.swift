//
//  MiniRemindersDataModel.swift
//  MiniReminders
//
//  Created by Bouvette Jr, Michael John on 2/27/20.
//  Copyright © 2020 C323 / mjbouvet. All rights reserved.
//

import Foundation

class MiniRemindersDataModel{
    //all remainders will be stored in an arraay
    var myData: [Item] = [Item(pContent:"Go to Class", pCategory: "School", pDate: Date(timeIntervalSinceNow: TimeInterval(0)), pDone: false)]
    
    func addEntry(_ content: String, category: String, date: Date, done: Bool){
        myData.append(Item(pContent: content, pCategory: category, pDate: date, pDone: false))
    }
    
    func getReminders() -> [Item]{
        return self.myData
    }

}

class Item{
    var theContent: String
    var theCategory: String
    var theDate: Date
    var theDoneFlag: Bool
    
    init(pContent: String, pCategory: String, pDate : Date, pDone : Bool){
        self.theContent = pContent
        self.theCategory = pCategory
        self.theDate = pDate
        self.theDoneFlag = pDone
    }
}

