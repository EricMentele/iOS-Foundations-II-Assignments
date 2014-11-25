//
//  ViewController.swift
//  iOS Foundations II Assignment 7
//
//  Created by Eric Mentele on 11/18/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet weak var tableView: UITableView!
    
    //View Controller properties
    var people = [Person]()
    
    //What is in the view?
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = "Roster"
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        if let peopleFromArchive = self.loadFromArchive() as [Person]?
        {
            self.people = peopleFromArchive
        }//peopleFromArchive
        else
        {
            self.loadFromPlist()
            self.saveToArchive()
        }//else
        
        //self.loadFromPlist()        check
       
    
    }//func override viewDidLoad
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
        self.saveToArchive()        
    }//viewWillAppear

    func loadFromArchive() -> [Person]?
    {
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        
        if let peopleFromArchive = NSKeyedUnarchiver.unarchiveObjectWithFile(documentsPath + "/archive1") as? [Person]
        {
            return peopleFromArchive
        }//peopleFromArchive
        return nil
    }//loadFromArchive
    
    func saveToArchive()
    {
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        NSKeyedArchiver.archiveRootObject(self.people, toFile: documentsPath + "/archive1")
    }//saveToArchive

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
                var person = Person(first: firstName, last: lastName)
                self.people.append(person)
            }//if let
        }//loop
    }//Load from plist
    
    //What is in the table?
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("person_cell", forIndexPath: indexPath) as PersonTableViewCell
        var personToDisplay = self.people[indexPath.row]
        cell.nameLabel.text = personToDisplay.firstName
        cell.subNameLabel.text = personToDisplay.lastName
        if personToDisplay.image != nil {
            cell.personImageView.image = personToDisplay.image
        } else {
            cell.personImageView.image = UIImage(named: "nerd9")
        }
        
        
        return cell
    }//TableView.
    
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
    }//prepForSegue
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//override memory
    
    
}//View Controller
