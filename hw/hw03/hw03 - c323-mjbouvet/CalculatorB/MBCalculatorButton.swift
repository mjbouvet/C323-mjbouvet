//
//  MBCalculatorButton.swift
//  CalculatorB
//
//  Created by Bouvette Jr, Michael John on 2/7/20.
//  Copyright © 2020 C323-mjbouvet. All rights reserved.
//

import UIKit

class MBCalculatorButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    
    func setup(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 0.5 * self.bounds.height
        self.titleLabel?.font = UIFont.systemFont(ofSize: 26, weight: .semibold)
    }
    
    
    
    
    override var bounds: CGRect{
        didSet{
            setup()
        }
    }
    
    
}
