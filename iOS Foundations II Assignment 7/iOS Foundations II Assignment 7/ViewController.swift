//
//  ViewController.swift
//  iOS Foundations II Assignment 7
//
//  Created by Eric Mentele on 11/18/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //View Controller properties
    var people = [Person]()
    
    //What is in the view?
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.loadFromPlist()
        self.title = "Roster"
        
        
    }//func override view
    
    func loadFromPlist()
    {
        //set up view of plist bag
        let plistURL = NSBundle.mainBundle().pathForResource("Roster", ofType: "plist")
        //reach inside
        let plistArray = NSArray(contentsOfFile: plistURL!)
        for object in plistArray!
        {
            println("looped")
            if let personDictionary = object as? NSDictionary
                
            {
                let firstName = personDictionary["firstName"] as String
                let lastName = personDictionary["lastName"] as String
                let student = personDictionary["student"] as Bool
                var person = Person(firstName: firstName, lastName: lastName, student: student)
                self.people.append(person)
            }//if let
        }//loop
    }//Load from plist
    
    //What is in the cell?
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("person_cell", forIndexPath: indexPath) as PersonTableViewCell
        var personToDisplay = self.people[indexPath.row]
        cell.nameLabel.text = personToDisplay.firstName
        
        
        return cell
    }//Cell contents.
    
    //How many are there?
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.people.count
    }//number of cells
    
    //What does the cell do?
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "person_detail"
        {
            let detailViewController = segue.destinationViewController as DetailViewController
            let selectedIndexPath = self.tableView.indexPathForSelectedRow()
            var personToPass = self.people[selectedIndexPath!.row]
            detailViewController.selectedPerson = personToPass
        }//if segue
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//override memory
    
    
}//View Controller
