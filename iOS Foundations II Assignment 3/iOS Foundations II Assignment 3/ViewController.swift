//
//  ViewController.swift
//  iOS Foundations II Assignment 3
//
//  Created by Eric Mentele on 11/6/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var names = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        //create people
        var eric = Person(firstName: "Eric", lastName: "Mentele", student: true)
        var rick = Person(firstName: "Rick", lastName: "Rocks", student: true)
        var don = Person(firstName: "Don", lastName: "Does", student: true)
        
        //add people
        self.names = [eric,rick,don]
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println("table view is asking about cell at row: \(indexPath.row) at section: \(indexPath.section)")
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        
        var personToDisplay = self.names[indexPath.row]
        cell.textLabel.text = personToDisplay.firstName
        return cell
        
    }
}
