//
//  ViewController.swift
//  CalculatorB
//
//  Created by Bouvette Jr, Michael John on 2/7/20.
//  Copyright © 2020 C323-mjbouvet. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var numberIsBeingEntered : Bool = false
    var myModel = CalcModel()
    
    
    @IBOutlet weak var calcDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pressedOperation(_ sender: Any){
        
    }
    
    @IBAction func pressedDigit(_ sender: Any){
        
    }
    
    
    
}

