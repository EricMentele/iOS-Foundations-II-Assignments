//
//  DetailViewController.swift
//  iOS Foundations II Assignment 4
//
//  Created by Eric Mentele on 11/9/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    
    @IBOutlet weak var firstName: UILabel!
    
    @IBOutlet weak var lastName: UILabel!
    
    var selectedPerson = Person(firstName: "", lastName: "", student: true)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.firstName.text = self.selectedPerson.firstName
        self.lastName.text = self.selectedPerson.lastName
        
    }
    
    
    
}