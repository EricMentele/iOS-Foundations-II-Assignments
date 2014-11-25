//
//  EditViewController.swift
//  iOS Foundations II Assignment 7
//
//  Created by Eric Mentele on 11/20/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import UIKit

class EditViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

//    required init(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    
    var selectedPerson : Person?
    var imagePickerController = UIImagePickerController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.firstNameText.delegate = self
        self.lastNameText.delegate = self
        self.title = self.selectedPerson?.firstName
        if self.selectedPerson?.image != nil
        {
            self.imageView.image = selectedPerson?.image
        }
        else
        {
            self.imageView.image = UIImage(named: "nerd9")
        }
        self.firstNameText.text = self.selectedPerson?.firstName
        self.lastNameText.text = self.selectedPerson?.lastName
        
    }//viewDidLoad
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }//memory disposal
    
    override func viewWillDisappear(animated: Bool)
    {
        super.viewWillDisappear(animated)
        
        self.selectedPerson?.firstName = self.firstNameText.text
        self.selectedPerson?.lastName = self.lastNameText.text
        if self.selectedPerson?.image != nil
        {
            self.imageView.image = selectedPerson?.image
        }
        else
        {
            self.imageView.image = UIImage(named: "nerd9")
        }

        
    }//viewWillDisappear
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
        
    }//textField return
    
    @IBAction func cameraCalled(sender: AnyObject)
    {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)
        {
            
            self.imagePickerController.sourceType = UIImagePickerControllerSourceType.Camera
            self.imagePickerController.delegate = self
            self.imagePickerController.allowsEditing = true
            self.presentViewController(self.imagePickerController, animated: true, completion: nil)
            
        }//if UIImagePicker
    }//cameraCalled
    
    @IBAction func libraryCalled(sender: AnyObject)
    {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary)
        {
            
            self.imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            self.imagePickerController.delegate = self
            self.imagePickerController.allowsEditing = true
            self.presentViewController(self.imagePickerController, animated: true, completion: nil)
            
        }//ifUIImagePickerController
    }//library Called
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject])
    {
        
        let image = info[UIImagePickerControllerEditedImage] as UIImage
        self.imageView.image = image
        self.selectedPerson?.image = image
        if selectedPerson?.image === image {
            println("image has changed")
        }//if
        imagePickerController.dismissViewControllerAnimated(true, completion: nil)
       
    }//imagePickerController
}//editviewcontroller
