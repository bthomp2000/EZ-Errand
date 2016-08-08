//
//  JobsTableViewCell.swift
//  EZErrands
//
//  Created by Brian Thompson on 8/7/16.
//  Copyright © 2016 Brian Thompson. All rights reserved.
//

import UIKit

class JobsTableViewCell: UITableViewCell {
    //MARK: Properties
    
    @IBOutlet weak var reqTier: UILabel!
    @IBOutlet weak var reqTime: UILabel!
    @IBOutlet weak var jobTitle: UILabel!
    @IBOutlet weak var timeRange: UILabel!
    @IBOutlet weak var starRating: UILabel!
    @IBOutlet weak var filledOpenLabel: UILabel!
    @IBOutlet weak var workerName: UILabel!
    @IBOutlet weak var workerTier: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
