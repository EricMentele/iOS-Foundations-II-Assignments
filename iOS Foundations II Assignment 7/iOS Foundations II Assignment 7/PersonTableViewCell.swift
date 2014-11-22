//
//  PersonTableViewCell.swift
//  iOS Foundations II Assignment 7
//
//  Created by Eric Mentele on 11/20/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import Foundation

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var subNameLabel: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
