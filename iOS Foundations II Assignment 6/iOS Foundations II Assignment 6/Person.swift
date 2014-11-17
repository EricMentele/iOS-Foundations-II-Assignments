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
