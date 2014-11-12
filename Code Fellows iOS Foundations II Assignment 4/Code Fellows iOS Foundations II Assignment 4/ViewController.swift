//
//  ViewController.swift
//  Code Fellows iOS Foundations II Assignment 4
//
//  Created by Eric Mentele on 11/8/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    //Setup of people array.
    var people = [Person]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Roster"
        
        //People to add to array.
        var eric = Person(firstName: "Eric", lastName: "Mentele", student: true)
        var edward = Person(firstName: "Edward", lastName: "Abrahamsen", student: true)
        var clint = Person(firstName: "Clint", lastName: "Akins", student: true)
        var joseph = Person(firstName: "Joseph", lastName: "Barnes", student: true)
        var brian = Person(firstName: "Brian", lastName: "Ledbetter", student: true)
        var adam = Person(firstName: "Adam", lastName: "Caldwell", student: true)
        let ryan = Person(firstName: "Ryan", lastName: "Christensen", student: true)
        let daniel = Person(firstName: "Daniel", lastName: "Hour", student: true)
        let chantel = Person(firstName: "Chantel", lastName: "Frizzel", student: true)
        let david = Person(firstName: "David", lastName: "Fry", student: false)
        let jeff = Person(firstName: "Jeffq", lastName: "Hendershot", student: true)
        let brad = Person(firstName: "Brad", lastName: "Johnson", student: false)
        let scott = Person(firstName: "Scott", lastName: "Kendall", student: true)
        let denise = Person(firstName: "Denise", lastName: "Koch", student: true)
        let michael = Person(firstName: "Michael", lastName: "Labaz", student: true)
        let patrick = Person(firstName: "Patrick", lastName: "Landin", student: true)
        let robert = Person(firstName: "Robert", lastName: "Lee", student: true)
        let john = Person(firstName: "John", lastName: "Leonard", student: true)
        let lindy = Person(firstName: "Lindy", lastName: "Merida", student: false)
        let duncan = Person(firstName: "Duncan", lastName: "Marsh", student: true)
        let lance = Person(firstName: "Lance", lastName: "Park", student: true)
        let andrewp = Person(firstName: "Andrew", lastName: "Potter", student: true)
        let andrewr = Person(firstName: "Andrew", lastName: "Reifers", student: true)
        let doc = Person(firstName: "Doctor", lastName: "Schwenk", student: true)
        let stephen = Person(firstName: "Stephen", lastName: "Doe", student: true)
        let mystery = Person(firstName: "Mystery", lastName: "Maddocks", student: true)
        
        
        
        self.people = [eric, edward, clint, joseph, brian, adam, ryan, daniel, chantel, david, jeff, brad, scott, denise, michael, patrick, robert, john, lindy, duncan, lance, andrewp, andrewr, doc, stephen, mystery]
        
        
    
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return self.people.count
    
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("CELL", forIndexPath: indexPath) as UITableViewCell
        
        var personToDisplay = self.people[indexPath.row]
        cell.textLabel.text = personToDisplay.firstName
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_DETAIL" {
            let detailViewController = segue.destinationViewController as DetailViewController
            let selectedIndexPath = self.tableView.indexPathForSelectedRow()
            var personToPass = self.people[selectedIndexPath!.row]
            detailViewController.selectedPerson = personToPass
        }
    
        }
}
