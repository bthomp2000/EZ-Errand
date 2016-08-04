//
//  EZUserTableViewController.swift
//  EZErrands
//
//  Created by Brian Thompson on 8/1/16.
//  Copyright © 2016 Brian Thompson. All rights reserved.
//

import UIKit

class EZUserTableViewController: UITableViewController {

    let categories = ["Lawncare","Housecare","Lifecare","Shopping","Other"]
    let tiers = ["Tier 1","Tier 2","Tier 3"]

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #Return the number of sections
        return 5
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #Return the number of rows
        return 3
    }

    

    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(categories[section])"
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LabelCell", forIndexPath: indexPath)
        

        // Configure the cell...
        cell.textLabel?.text = "\(tiers[indexPath.row])"
        
        return cell
    }
}
