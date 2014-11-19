//
//  DetailViewController.swift
//  iOS Foundations II Assignment 6
//
//  Created by Eric Mentele on 11/16/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    
    var selectedPerson = Person()
    var imagePickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstNameText.delegate = self
        self.lastNameText.delegate = self
        self.title = self.selectedPerson.firstName
        if self.selectedPerson.image != nil{
            self.imageView.image = selectedPerson.image
        }
    }//viewDidLoad
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }//memory disposal
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }//textField return
    
    @IBAction func cameraCalled(sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
            
            self.imagePickerController.sourceType = UIImagePickerControllerSourceType.Camera
            self.imagePickerController.delegate = self
            self.imagePickerController.allowsEditing = true
            self.presentViewController(self.imagePickerController, animated: true, completion: nil)
            
        }//cameraCalled
    }
    
   func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        
        let image = info[UIImagePickerControllerEditedImage] as UIImage
        self.imageView.image = image
        self.selectedPerson.image = image
        if selectedPerson.image === image {
        println("image has changed")
    }//if
    self.dismissViewControllerAnimated(true, completion: nil)
    }//imagePickerController
    
    
    
}//DetailViewController

