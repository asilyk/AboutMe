//
//  Person.swift
//  AboutMe
//
//  Created by Alexander on 08.01.2022.
//

struct User {
    let userName: String
    let password: String

    let person: Person

    static func getUser() -> User {
        User(
            userName: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String

    let age: UInt

    let pets: [Pet]

    static func getPerson() -> Person {
        Person(
            name: "Aleksandr",
            surname: "Ilyk",
            age: 20,
            pets: [
                Pet(name: "Pirog", animal: .dog),
                Pet(name: "Belyash", animal: .cat)
            ]
        )
    }
}

struct Pet {
    enum Animal {
        case dog
        case cat
    }

    let name: String
    let animal: Animal
}
