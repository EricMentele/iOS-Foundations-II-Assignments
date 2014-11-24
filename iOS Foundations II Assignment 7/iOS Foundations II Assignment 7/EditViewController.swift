//
//  EditViewController.swift
//  iOS Foundations II Assignment 7
//
//  Created by Eric Mentele on 11/20/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import UIKit

class EditViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    
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
    
    @IBAction func libraryCalled(sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary) {
            
            self.imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            self.imagePickerController.delegate = self
            self.imagePickerController.allowsEditing = true
            self.presentViewController(self.imagePickerController, animated: true, completion: nil)
            
        }//library Called
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
}//editviewcontroller
