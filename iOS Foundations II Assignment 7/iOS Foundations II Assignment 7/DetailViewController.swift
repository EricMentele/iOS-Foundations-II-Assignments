//
//  DetailViewController.swift
//  iOS Foundations II Assignment 7
//
//  Created by Eric Mentele on 11/20/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import UIKit

class DetailViewController: UINavigationController {
    
    var selectedPerson = Person()
    
    
    
    @IBOutlet weak var labelName: UILabel!
    //properties
    
    
    //set up view
    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelName.text = "test"
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //        self.firstNameLabel.text = "test"
        //        self.lastNameLabel.text = "test2"
    }
}//DetailViewController
