//
//  Person.swift
//  iOS Foundations II Assignment 4
//
//  Created by Eric Mentele on 11/9/14.
//  Copyright (c) 2014 Eric Mentele. All rights reserved.
//

import Foundation

class Person
{
    var firstName: String
    var lastName: String
    var student: Bool
    
    init(firstName:String, lastName: String, student:Bool)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.student = student
    }
}