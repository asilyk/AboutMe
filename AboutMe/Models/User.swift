//
//  Person.swift
//  AboutMe
//
//  Created by Alexander on 08.01.2022.
//

struct User {
    let userName: String
    let password: String
    
    let Person
}

struct Person {
    let name: String
    let surname: String
    
    let age: UInt
    
    let pets: [Pet]
}

struct Pet {
    enum Animal {
        case dog
        case cat
    }
    
    let name: String
    let animal: Animal
}

