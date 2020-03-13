//
//  ShrdluTableViewController.swift
//  ShrdluApp
//
//  Created by Bouvette Jr, Michael John on 3/12/20.
//  Copyright © 2020 C323 // mjbouvet. All rights reserved.
//

import UIKit

class ShrdluTableViewController: UITableViewController {
    
    var myAppDelegate : AppDelegate?
    var myShrdluReference : Shrdlu?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myAppDelegate = UIApplication.shared.delegate as! AppDelegate //these lines access the model instance we created in the app delegate
        self.myShrdluReference = myAppDelegate?.myShrdlu
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1 //only one section needed
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let lHowManyRows = self.myShrdluReference?.getInputArray().count{ //if the instance works get the count
            //print(lHowManyRows)
            return lHowManyRows //the number of rows is the number of entries in the input array, which is the same as the number of entries in the output array because they are one-to-one
            
        }else{
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> ShrdluTableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! ShrdluTableViewCell //access our custom cell

        if let lModel = self.myShrdluReference{ //if the cell is the right type use it as our model to get the cell data
            let lInputArray = lModel.getInputArray() //recieve the current input array
            let lOutputArray = lModel.getOutputArray() //recieve the current output array
            let lInputItem = lInputArray[indexPath.row] //get the input item corresponding to the cell we are in
            let lOutputItem = lOutputArray[indexPath.row] //get the output item corresponding to the cell we are in
            
            cell.inputLabel.text = "Input: \(lInputItem)" //set the input cell in the label to the correct value
            cell.outputLabel.text = "Output: \(lOutputItem)" //set the output cell in the label to the correct value
        }
        

        return cell //return our updated cell
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
