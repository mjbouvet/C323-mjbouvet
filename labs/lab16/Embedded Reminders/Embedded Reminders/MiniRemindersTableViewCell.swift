//
//  MiniRemindersTableViewCell.swift
//  Embedded Reminders
//
//  Created by Bouvette Jr, Michael John on 3/5/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import UIKit

class MiniRemindersTableViewCell: UITableViewCell {
    

    @IBOutlet weak var reminderTitleLabel : UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var doneLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
