//
//  ViewController.swift
//  iOS Foundations II Assignment 6
//
//  Created by Eric Mentele on 11/16/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        
    }//override func viewDidLoad
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }//func tableView table structure
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("personcell", forIndexPath: indexPath) as UITableViewCell
    return cell
    } //func tableView cell's structure
    

}//View Controller

