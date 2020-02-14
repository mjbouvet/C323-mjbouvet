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
    var signChangedNum = 0
    
    
    @IBOutlet weak var calcDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func pressedOperation(_ sender: Any){
        if((sender as AnyObject).currentTitle == "+"){
            if(numberIsBeingEntered == true){
                myModel.setSecondOperand(sOperand: Int(calcDisplay.text ?? "0", radix : 2)!)
                myModel.setFirstOperand(fOperand: myModel.performOperation(oper: myModel.operation!))
                calcDisplay.text = ""
                myModel.setOperation(oper: "+")
            }
            else{
                myModel.setOperation(oper: "+")
                myModel.setFirstOperand(fOperand: Int(calcDisplay.text ?? "0", radix : 2)!)
                calcDisplay.text = ""
                numberIsBeingEntered = true
            }
        }
        else if((sender as AnyObject).currentTitle == "-"){
            if(numberIsBeingEntered == true){
                myModel.setSecondOperand(sOperand: Int(calcDisplay.text ?? "0", radix : 2)!)
                myModel.setFirstOperand(fOperand: myModel.performOperation(oper: myModel.operation!))
                calcDisplay.text = ""
                myModel.setOperation(oper: "-")
            }
            else{
                myModel.setOperation(oper: "-")
                myModel.setFirstOperand(fOperand: Int(calcDisplay.text ?? "0", radix : 2)!)
                calcDisplay.text = ""
                numberIsBeingEntered = true
            }
        }
        else if((sender as AnyObject).tag == 2){
            if(numberIsBeingEntered == true){
                myModel.setSecondOperand(sOperand: Int(calcDisplay.text ?? "0", radix : 2)!)
                myModel.setFirstOperand(fOperand: myModel.performOperation(oper: myModel.operation!))
                calcDisplay.text = ""
                myModel.setOperation(oper: "/")
            }
            else{
                myModel.setOperation(oper: "/")
                myModel.setFirstOperand(fOperand: Int(calcDisplay.text ?? "0", radix : 2)!)
                calcDisplay.text = ""
                numberIsBeingEntered = true
            }
        }
        else if((sender as AnyObject).tag == 3){
            if(numberIsBeingEntered == true){
                myModel.setSecondOperand(sOperand: Int(calcDisplay.text ?? "0", radix : 2)!)
                myModel.setFirstOperand(fOperand: myModel.performOperation(oper: myModel.operation!))
                calcDisplay.text = ""
                myModel.setOperation(oper: "*")
            }
            else{
                myModel.setOperation(oper: "*")
                myModel.setFirstOperand(fOperand: Int(calcDisplay.text ?? "0", radix : 2)!)
                calcDisplay.text = ""
                numberIsBeingEntered = true
            }
        }
        else if(((sender as AnyObject).tag) == 1){
            decimalNumber = 0
            //Change Sign
            if(calcDisplay.text!.isEmpty){
                signChangedNum = 0
                decimalNumber = 0
            }
            else if(calcDisplay.text == "0"){
                calcDisplay.text = "0"
            }
            else{
                decimalNumber = Int(calcDisplay.text ?? "0", radix : 2)!
            }
            
            if(decimalNumber < 0){
                signChangedNum = decimalNumber + (2 * abs(decimalNumber))
                calcDisplay.text = String(signChangedNum, radix : 2)
            }
            else if(decimalNumber > 0){
                signChangedNum = decimalNumber - (2 * abs(decimalNumber))
                calcDisplay.text = String(signChangedNum, radix : 2)
            }
            
        }
        else if((sender as AnyObject).currentTitle == "="){
            myModel.setSecondOperand(sOperand: Int(calcDisplay.text ?? "0", radix : 2)!)
            calcDisplay.text = String(myModel.performOperation(oper: myModel.operation!), radix: 2)
            numberIsBeingEntered = false
        }
        else if((sender as AnyObject).currentTitle == "AC"){
            calcDisplay.text = ""
        }
        else if((sender as AnyObject).currentTitle == "mc"){
            myModel.memory = 0
        }
        else if((sender as AnyObject).currentTitle == "mr"){
            calcDisplay.text = String(myModel.memory, radix: 2)
        }
        else if((sender as AnyObject).currentTitle == "m+"){
            myModel.memory += Int(calcDisplay.text ?? "0", radix : 2)!
        }
        else if((sender as AnyObject).currentTitle == "m-"){
            myModel.memory -= Int(calcDisplay.text ?? "0", radix : 2)!
        }
        
    }
    
    @IBAction func pressedDigit(_ sender: Any){
            if((sender as AnyObject).currentTitle == "1"){
                calcDisplay.text?.append("1")
            }
            else if((sender as AnyObject).currentTitle == "0"){
                calcDisplay.text?.append("0")
            }
    }
    
    
    
}

