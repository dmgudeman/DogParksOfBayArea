//
//  MyTableViewController.swift
//  DogParksOfBayArea
//
//  Created by David Gudeman on 10/19/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
  

  
  var myParksTextArray = ["Park 00", "Park 01", "Park 02", "Park 03", "Park 04",
                    "Park 05", "Park 06", "Park 07", "Park 08", "Park 09",
                    "Park 10", "Park 11", "Park 12", "Park 13", "Park 14",
                    "Park 15", "Park 16", "Park 17", "Park 18", "Park 19"]

  var myParksImageArray = ["ajax", "jquery", "json", "ajax", "jquery", "json", "ajax", "jquery", "json", "ajax", "jquery", "json", "ajax", "jquery", "json", "ajax", "jquery", "json", "ajax", "jquery"]
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return myParksTextArray.count
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      
        let cellIdentifier = "parkCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MyTableViewCell
        cell.myParkCellTextView?.text = myParksTextArray[indexPath.row]
      cell.myParkCellImageView?.image = UIImage(named: myParksImageArray[indexPath.row])

        return cell
    }
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
      if segue.identifier == "expandedView"
      {
        if let indPath = self.tableView.indexPathForSelectedRow()
        {
          let detailViewController = segue.destinationViewController as! MyDetailViewController
          detailViewController.myDetailViewTopTextViewText = self.myParksTextArray[indPath.row]
          print("I'm here " + self.myParksTextArray[indPath.row])
         // detailViewController.myDetailViewImageText = self.myParksImageArray[indPath.row]
          
          
        }
      }
    }
  

}
