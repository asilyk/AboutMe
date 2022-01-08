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
    let image: String

    let name: String
    let surname: String

    let country: String
    let city: String

    let age: UInt

    let pets: [Pet]

    static func getPerson() -> Person {
        Person(
            image: "me",
            name: "Aleksandr",
            surname: "Ilyk",
            country: "Russia",
            city: "Moscow",
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
