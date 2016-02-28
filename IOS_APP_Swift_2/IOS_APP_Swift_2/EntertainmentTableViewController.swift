//
//  EntertainmentTableViewController.swift
//  IOS_APP_Swift_2
//
//  Created by Yicheng Wang on 27/2/2016.
//  Copyright © 2016 Yicheng Wang. All rights reserved.
//

import UIKit

class EntertainmentTableViewController: UITableViewController {
    
    let Music = [("1", "2"), ("1", "2"), ("1", "2"), ("1", "2"), ("1", "2"), ("1", "2"), ("1", "2")]
    let Photo = [("1", "2"), ("1", "2"), ("1", "2"), ("1", "2"), ("1", "2"), ("1", "2"), ("1", "2")]
    let Video = [("1", "2"), ("1", "2"), ("1", "2"), ("1", "2"), ("1", "2"), ("1", "2"), ("1", "2")]

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
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var cellcount: Int = 0
        switch (section) {
        case 0:
            cellcount = Music.count
            break;
        case 1:
            cellcount = Photo.count
            break;
        case 2:
            cellcount = Video.count
            break;
        default:
            break;
        }
        return cellcount
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cellName: Array = ["Music", "Photo", "Video"]
        let cell = tableView.dequeueReusableCellWithIdentifier(cellName[indexPath.section], forIndexPath: indexPath) as UITableViewCell
            switch (indexPath.section) {
        case 0:
            let (MusicName, MusicAuthor) = Music[indexPath.row]
            cell.textLabel?.text = MusicName
            cell.detailTextLabel?.text = MusicAuthor
            break;
        case 1:
            let (PhotoPlace, PhotoTime) = Photo[indexPath.row]
            cell.textLabel?.text = PhotoPlace
            cell.detailTextLabel?.text = PhotoTime
            break;
        case 2:
            let (VideoName, VideoAuthor) = Video[indexPath.row]
            cell.textLabel?.text = VideoName
            cell.detailTextLabel?.text = VideoAuthor
            break;
        default:
            break;
        }
        
        var ImageIcon = UIImage(named: "SHvsMK")
        cell.imageView?.image = ImageIcon
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var TitleName: String?
        
        switch (section) {
        case 0:
            TitleName = "Music"
            break;
        case 1:
            TitleName = "Photo"
            break;
        case 2:
            TitleName = "Video"
            break;
        default:
            break;
        }
        return TitleName
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
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
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
