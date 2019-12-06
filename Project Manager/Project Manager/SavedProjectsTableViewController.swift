//
//  SavedProjectsTableViewController.swift
//  Project Manager
//
//  Created by Luigi Alecce on 3/10/19.
//  Copyright © 2019 Luigi Alecce. All rights reserved.
//

import UIKit

var tempIndex = 0

class SavedProjectsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return projects.count
    }




    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let project = projects[indexPath.row]
        
        //let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        cell.textLabel?.text = project.name
        cell.detailTextLabel?.text = project.members
        
        // Configure the cell...

        return cell
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if let DetailViewController = segue.destination as? detailViewController {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                DetailViewController.project = projects[indexPath.row]
                tempIndex = indexPath.row
            }
        }
    }
    
    @IBOutlet var myTableView: UITableView!
    
    @IBAction func deleteAll(_ sender: UIBarButtonItem) {
        if (projects.count == 0){
            let alertController = UIAlertController(title: "Nothing to Delete", message: "There are no saved projects", preferredStyle: .alert)
            let dismissAction = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
            alertController.addAction(dismissAction)
            present(alertController, animated: true, completion: nil)
        }
        else{
            let alertController = UIAlertController(title: "Delete All Projects", message: "Are you sure you want to delete all your saved projects? This action cannot be reveresed.", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "No", style: .default, handler: nil)
            alertController.addAction(cancelAction)
            let acceptAction = UIAlertAction(title: "Yes", style: .default, handler:{(alert: UIAlertAction!) in projects.removeAll(); self.myTableView.reloadData()})
            alertController.addAction(acceptAction)
            present(alertController, animated: true, completion: nil)
            
        }

    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        dismiss(animated: false, completion: nil)
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            projects.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
    
    /*
    override func tableView(_ tableView: UITableView,
                            accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let project = projects[indexPath.row]
        let title = project.name
        let message = project.descriptionData
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let project = projects[indexPath.row]
        let title = project.name
        let message = project.members
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        let okayAction = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    */
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
