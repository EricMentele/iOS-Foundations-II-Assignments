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
    @IBOutlet weak var firstnameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
    
    //Setup for person to display.
    var selectedPerson = Person(firstName: String.self, lastName: String.self, student: Bool.self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = self.selectedPerson.firstName
        self.firstnameLabel.text = self.selectedPerson.firstName
        self.lastnameLabel.text = self.selectedPerson.lastName
        self.view.backgroundColor = UIColor.blueColor()
    }
    
    override func didRecieveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
