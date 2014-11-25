//
//  Person.swift
//  iOS Foundations II Assignment 7
//
//  Created by Eric Mentele on 11/20/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import Foundation
import UIKit

class Person : NSObject, NSCoding {
    
    var firstName : String
    var lastName : String
    var image : UIImage?
    
    init (first : String, last : String)
    {
        self.firstName = first
        self.lastName = last
       
    }

    
    required init(coder aDecoder: NSCoder)
    {
        self.firstName = aDecoder.decodeObjectForKey("firstName") as String
        self.lastName = aDecoder.decodeObjectForKey("lastName") as String
        if let decodedImage = aDecoder.decodeObjectForKey("image") as? UIImage
        {
            self.image = decodedImage
        }
    }
    
    func encodeWithCoder(aCoder: NSCoder)
    {
        aCoder.encodeObject(self.firstName, forKey: "firstName")
        aCoder.encodeObject(self.lastName, forKey: "lastName")
        if self.image != nil
        {
            aCoder.encodeObject(self.image!, forKey: "image")
        }
        else
        {
            aCoder.encodeObject(nil, forKey: "image")
        }
    }
    
}
