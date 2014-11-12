//
//  ViewController.swift
//  iOS Foundations II Assignment 5
//
//  Created by Eric Mentele on 11/11/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
       
        
    }//view Did Load

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }//tableView rows
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel.text = "SWIFT"
        
         return cell
        }//tableView cells
    
    }//ViewController



