//
//  DataEntryViewController.swift
//  MiniReminders
//
//  Created by Bouvette Jr, Michael John on 2/27/20.
//  Copyright © 2020 C323 / mjbouvet. All rights reserved.
//

import UIKit

class DataEntryViewController: UIViewController {
    
    @IBOutlet weak var myContent: UITextField!
    @IBOutlet weak var myCategory: UITextField!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBAction func myAddButton(_ sender: UIButton) {
        //add the data from UI to a new Item
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let myDataReference = appDelegate.myRemindersData
        
        myDataReference.addEntry(myContent.text!, category: myCategory.text!, date: myDatePicker.date, done: false)
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

