//
//  Person.swift
//  iOS Foundations II Assignment 6
//
//  Created by Eric Mentele on 11/16/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import Foundation
import UIKit

class Person {
    var firstName: String
    var lastName: String
    var student: Bool
    var image: UIImage?
    
    init(firstName: String, lastName: String, student: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.student = student
    }
    init(){
        self.firstName = "john"
        self.lastName  = "doe"
        self.student    = false
    }
}

//class Person: NSObject, NSCoding {
//    var firstName: String!
//    var lastName: String!
//    var student: Bool!
//    var image: UIImage!
//    
//    
//    required convenience init(coder decoder: NSCoder) {
//        self.init()
//        self.firstName = decoder.decodeObjectForKey("firstName") as String?
//        self.lastName = decoder.decodeObjectForKey("lastName") as String?
//        self.student = decoder.decodeBoolForKey("student")
//        self.image = decoder.decodeObjectForKey("image") as UIImage?
//        
//    }//req convenience
//    
//    func encodeWithCoder(coder: NSCoder) {
//        coder.encodeObject(self.firstName, forKey: "firstName")
//        coder.encodeObject(self.lastName, forKey: "lastName")
//        coder.encodeBool(self.student, forKey: "student")
//        coder.encodeObject(self.image, forKey: "image")
//    }//encode
//    
//}
//
//let defaults = NSUserDefaults()
//let peopleKey = "peopleKey"
//var people = [Person]()
//var peopleunarchiveddata = NSKeyedArchiver.archivedDataWithRootObject(people)
//
//var peopleunarchived = NSKeyedUnarchiver.unarchiveObjectWithData(peopleunarchiveddata) as [Person]



