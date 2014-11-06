//
//  ViewController.swift
//  iOS Foundations II Assignment 2
//
//  Created by Eric Mentele on 10/30/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myPerson = Person(firstName: "Eric", lastName: "Mentele", student: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func personButton(sender : AnyObject) {
        myPerson.here()
    }

}



