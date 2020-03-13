//
//  InteractionViewController.swift
//  ShrdluApp
//
//  Created by Bouvette Jr, Michael John on 3/12/20.
//  Copyright © 2020 C323 // mjbouvet. All rights reserved.
//

import UIKit

class InteractionViewController: UIViewController {

    @IBOutlet weak var dataEntry : UITextField! //text field instantiated
    @IBOutlet weak var dataDisplay : UITextView! //text view instantiated
    @IBAction func sendInput(_ sender : UIButton){ //function for button press
        let appDelegate = UIApplication.shared.delegate as! AppDelegate //accesses our model created in the app delegate
        let myShrdlu = appDelegate.myShrdlu
        
        myShrdlu.textField = dataEntry.text //sets the models textfield value to the user text input
        dataDisplay.text.append("* \(dataEntry.text ?? "") \n") //displays the users input in the text view with an * infront the line break
        dataDisplay.text.append("\(myShrdlu.oneInteraction(pInput: myShrdlu.textField)) \n") //access the oneInteraction method to produce the corresponding response to the user input
        
        if let lTabViewController = self.tabBarController{ //checks we are in a tab view controller
            if let lSiblingsViewControllers = lTabViewController.viewControllers{ //sees the children of the tab view controller
                
                if lSiblingsViewControllers.count > 1 { //checks there is more than 1 children
                if let lTableViewController = lSiblingsViewControllers[1] as? UITableViewController{ //takes the table view controller located in the 2nd position in our array
                    if let lTableView = lTableViewController.view as? UITableView{
                        lTableView.reloadData() //updates the table so cells update correctly
                    }
                }
            }
            }
        }
        dataEntry.text = "" //resets the text field's text
        dataEntry.resignFirstResponder() //dismisses the keyboard
    }
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }
}

