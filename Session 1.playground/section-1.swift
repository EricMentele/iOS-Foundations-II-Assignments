// Playground - noun: a place where people can play

import UIKit


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

var Eric = Person(firstName: "Eric", lastName: "Mentele", student: true)

Eric.here()



//Create a Person class in Swift with the following functionality:
//Properties for a person’s first name and last name and a bool declaring if the person is a student or not

//An init method that takes in 3 parameters that are used to set each property on the person.

//A method that returns the persons full name (the first name and last name combined!)
