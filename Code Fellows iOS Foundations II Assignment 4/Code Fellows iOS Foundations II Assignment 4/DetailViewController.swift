//
//  DetailViewController.swift
//  Code Fellows iOS Foundations II Assignment 4
//
//  Created by Eric Mentele on 11/8/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    //Person's first and last name displayed attributes.
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    //Setup for person to display.
    
    var selectedPerson = Person(firstName: "", lastName: "", student: true)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.firstNameLabel.text = self.selectedPerson.firstName
        self.lastNameLabel.text = self.selectedPerson.lastName
    }
    
    
}
