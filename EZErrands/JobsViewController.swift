//
//  JobsViewController.swift
//  EZErrands
//
//  Created by Brian Thompson on 8/7/16.
//  Copyright © 2016 Brian Thompson. All rights reserved.
//

import UIKit

class JobsViewController: UITableViewController {

    func initJobs(){
        let reqTiers = ["••","•","••","•"]
        let reqTimes = ["11 am", "10 am", "2:30 pm","9 am"]
        let jobTitles = ["House cleaning","Dog watching","Plumbing","Gutter cleaning"]
        let timeRanges = ["1-2 pm","12-3 pm","1-3 pm","4-5 am"]
        let ratings = ["★★★★","★★★","",""]
        let filledOpen = ["Filled:","Filled:","Open","Open"]
        let workerNames = ["A2 Maids","Allie","",""]
        let workerTiers = ["••","•","",""]
        
        for i in 0...3 {
            jobs.append(Job())
            
            jobs[i].requiredTier = reqTiers[i]
            jobs[i].requiredTime = reqTimes[i]
            jobs[i].title = jobTitles[i]
            jobs[i].range = timeRanges[i]
            jobs[i].rating = ratings[i]
            jobs[i].openClosed = filledOpen[i]
            jobs[i].name = workerNames[i]
            jobs[i].workertier = workerTiers[i]
            
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initJobs()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return jobs.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cellIdentifier = "JobsTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! JobsTableViewCell
        
        let job = jobs[indexPath.row]
        
        cell.reqTier.text = job.requiredTier
        cell.reqTime.text = job.requiredTime
        cell.jobTitle.text = job.title
        cell.timeRange.text = job.range
        cell.starRating.text = job.rating
        cell.filledOpenLabel.text = job.openClosed
        cell.workerName.text = job.name
        cell.workerTier.text = job.workertier
        
        return cell
    }

}
