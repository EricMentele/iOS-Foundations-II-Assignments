//
//  Person Model.swift
//  iOS Foundations II Assignment 3
//
//  Created by Eric Mentele on 11/6/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import Foundation

class Person {
    
    var firstName: String
    var lastName: String
    var student = true
    
    
    init(firstName: String, lastName: String, student: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.student = student
        
    }
    
    func here() {
        println("The swift \(firstName) \(lastName) is here. Student: \(student)")
    }
    
    
}


