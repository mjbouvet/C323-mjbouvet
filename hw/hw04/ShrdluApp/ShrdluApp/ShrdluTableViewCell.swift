//
//  ShrdluTableViewCell.swift
//  ShrdluApp
//
//  Created by Bouvette Jr, Michael John on 3/13/20.
//  Copyright © 2020 C323 // mjbouvet. All rights reserved.
//

import UIKit

class ShrdluTableViewCell: UITableViewCell {
    
    @IBOutlet weak var inputLabel: UILabel! //connected to input label in our prototype cell
    @IBOutlet weak var outputLabel : UILabel! //connected to output label in our prototype cell

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

        // Configure the view for the selected state
    }

}
