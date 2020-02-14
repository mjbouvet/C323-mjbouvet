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
    var decimalNumber = 0
    
    
    @IBOutlet weak var calcDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pressedOperation(_ sender: Any){
        if((sender as AnyObject).currentTitle == "+"){
            myModel.setOperation(oper: "+")
            decimalNumber = Int(calcDisplay.text ?? "0", radix : 2)!
            myModel.setFirstOperand(fOperand: decimalNumber)
            calcDisplay.text = ""
            numberIsBeingEntered = true
        }
        else if((sender as AnyObject).currentTitle == "-"){
            myModel.setOperation(oper: "-")
            calcDisplay.text = ""
            numberIsBeingEntered = true
        }
        if((sender as AnyObject).currentTitle == "="){
            myModel.setSecondOperand(sOperand: Int(calcDisplay.text ?? "0", radix : 2)!)
            calcDisplay.text = String(myModel.performOperation(oper: myModel.operation!), radix: 2)
            numberIsBeingEntered = false
        }
        if((sender as AnyObject).currentTitle == "AC"){
            calcDisplay.text = ""
        }
        
    }
    
    @IBAction func pressedDigit(_ sender: Any){
        if(numberIsBeingEntered){
            if((sender as AnyObject).currentTitle == "1"){
                calcDisplay.text?.append("1")
            }
            else if((sender as AnyObject).currentTitle == "0"){
                calcDisplay.text?.append("0")
            }
        }
        else if(numberIsBeingEntered == false){
            if((sender as AnyObject).currentTitle == "1"){
                calcDisplay.text?.append("1")
            }
            else if((sender as AnyObject).currentTitle == "0"){
                calcDisplay.text?.append("0")
            }
        }
    }
    
    
    
}

