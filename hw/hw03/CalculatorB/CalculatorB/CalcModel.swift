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
    
    var firstOperand : Int?
    var secondOperand : Int?
    var operation : Operation?
    
    public func setFirstOperand(){
        firstOperand = 2
    }
    
    public func setSecondOperand(){
        secondOperand = 3
    }
    
    public func setOperation(){
        operation = .add
    }
    
    public func performOperation(){
        
    }
    
    enum Operation:String {
        case add = "+"
        case subtract = "-"
    }
}
