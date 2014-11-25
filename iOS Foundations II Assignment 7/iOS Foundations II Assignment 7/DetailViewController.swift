//
//  DetailViewController.swift
//  iOS Foundations II Assignment 7
//
//  Created by Eric Mentele on 11/20/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UINavigationControllerDelegate
{
    
    @IBOutlet weak var PersonImageDetail: UIImageView!
    @IBOutlet weak var FirstNameDetail: UILabel!
    @IBOutlet weak var LastNameDetail: UILabel!
    @IBOutlet weak var editPersonView: UIButton!
    
    
    //properties
    var selectedPerson : Person?
    
    //set up view
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.FirstNameDetail.text = selectedPerson?.firstName
        self.LastNameDetail.text = selectedPerson?.lastName
        if self.selectedPerson?.image != nil
        {
            self.PersonImageDetail.image = selectedPerson?.image
        }
        else
        {
            self.PersonImageDetail.image = UIImage(named: "nerd9")
        
        }//if self.selectedPerson.image

        
    }//view did load
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "person_edit"
        {
            let editViewController = segue.destinationViewController as EditViewController
            var personToPass = self.selectedPerson
            editViewController.selectedPerson = personToPass
        }//if segue
    }


    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        self.FirstNameDetail.text = selectedPerson?.firstName
        self.LastNameDetail.text = selectedPerson?.lastName
        if self.selectedPerson?.image != nil
        {
            self.PersonImageDetail.image = selectedPerson?.image
        }
        else
        {
            self.PersonImageDetail.image = UIImage(named: "nerd9")
            
        }//if self.selectedPerson.image
        
    }//view will appear
    
    
}//DetailViewController
