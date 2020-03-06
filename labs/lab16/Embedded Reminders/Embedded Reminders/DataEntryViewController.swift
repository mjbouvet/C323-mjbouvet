//
//  MasterViewController.swift
//  Embedded Reminders
//
//  Created by Bouvette Jr, Michael John on 3/5/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
    @IBOutlet weak var myContent: UITextField!
    @IBOutlet weak var myCategory: UITextField!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBAction func myAddButton(_ sender: UIButton) {
        //add the data from UI to a new Item
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let myDataReference = appDelegate.myRemindersData
        
        myDataReference.addEntry(myContent.text!, category: myCategory.text!, date: myDatePicker.date, done: false)
        
        if let lContainerTabBarController = self.tabBarController{
            //since we got inside the "if let", it means that the self controller is contained by a Tab Bar Controller
            if let lSiblingsViewControllers = lContainerTabBarController.viewControllers{
                //since we got inside this "if let", it means that we have "sibling" View Controllers
                
                if lSiblingsViewControllers.count > 1 {
                    print("the lSiblingsViewControllers[0] is \(lSiblingsViewControllers[0])")
                    print("the lSiblingsViewControllers[0] is \(lSiblingsViewControllers[1])")
                    
                    // the "sibling" at array index 1 should be a Table View Controller
                    if let lTableViewController = lSiblingsViewControllers[1] as? UITableViewController{
                            //And its view should be a UITableView
                            if let lTableView = lTableViewController.view as? UITableView{
                                // Finally ask the Table View to reload its content from the model:
                                lTableView.reloadData()
                            }
                        }
                    }
                }
        }
    }
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


