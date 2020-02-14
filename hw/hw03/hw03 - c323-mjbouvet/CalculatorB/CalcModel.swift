//
//  CalcModel.swift
//  CalculatorB
//
//  Created by Bouvette Jr, Michael John on 2/7/20.
//  Copyright © 2020 C323-mjbouvet. All rights reserved.
//

import Foundation

class CalcModel{
    init(){
        
    }
    
    var firstOperand : Int!
    var secondOperand : Int!
    var operation : String!
    var memory = 0
    
    public func setFirstOperand(fOperand : Int){
        firstOperand = fOperand
    }
    
    public func setSecondOperand(sOperand : Int){
        secondOperand = sOperand
    }
    
    public func setOperation(oper : String){
        if(oper == "+"){
            operation = "+"
        }
        else if(oper == "-"){
            operation = "-"
        }
        else if(oper == "/"){
            operation = "/"
        }
        else if(oper == "*"){
            operation = "*"
        }
    }
    
    
    public func performOperation(oper : String) -> Int{
        if(oper == "+"){
            return firstOperand + secondOperand
        }
        else if(oper == "-"){
            return firstOperand - secondOperand
        }
        else if(oper == "/"){
            return firstOperand / secondOperand
        }
        else{
            return firstOperand * secondOperand
        }
    }
    
}
