//
//  Detail View Controller.swift
//  iOS Foundations II Assignment 5
//
//  Created by Eric Mentele on 11/11/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import UIkit

class DetailViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    self.firstName.delegate = self
    self.lastName.delegate = self
        
    
    }//viewDidLoad

func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
}//textField return

}//DetailViewController