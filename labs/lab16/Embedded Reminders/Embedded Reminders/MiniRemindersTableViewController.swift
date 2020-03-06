//
//  MiniRemindersTableViewController.swift
//  Embedded Reminders
//
//  Created by Bouvette Jr, Michael John on 3/5/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import UIKit

class MiniRemindersTableViewController: UITableViewController {
    
    
    var myAppDelegate: AppDelegate?
    //Reference to model:
    var myModelReference : MiniRemindersDataModel?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //get app delegate:
        self.myAppDelegate = UIApplication.shared.delegate as! AppDelegate
        //from app delegate get reference to model
        self.myModelReference = myAppDelegate?.myRemindersData

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        // ask model for size of its data array
        
        if let lHowManyRows = self.myModelReference?.getReminders().count{
            // set size of this section in the table view, i.e. how many rows
            return lHowManyRows
        }else{
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> MiniRemindersTableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReminderCell", for: indexPath) as! MiniRemindersTableViewCell
        
        //obtain non-optional reference to model:
        if let lModel = self.myModelReference{
            //get reference to array of reminder items from the Model:
            let lDataArray = lModel.getReminders()
            // get one Reminder item from array:
            let lReminderItem = lDataArray[indexPath.row]
            
            // populate labels
            cell.reminderTitleLabel.text = "Reminder: \(lReminderItem.theContent)"
            cell.categoryLabel.text = "Category: \(lReminderItem.theCategory)"
            cell.dateLabel.text = "Date: \(lReminderItem.theDate)"
            cell.doneLabel.text = "Is it Completed Yet: \(lReminderItem.theDoneFlag)"
            
            
        }

        // Configure the cell...

        return cell
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
