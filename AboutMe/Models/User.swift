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

    let age: String

    let hobby: String

    let country: String
    let city: String

    let pets: [Pet]

    static func getPerson() -> Person {
        Person(
            image: "person.fill",
            name: "Aleksandr",
            surname: "Ilyk",
            age: "21",
            hobby: "programming",
            country: "Russia",
            city: "Moscow",
            pets: [
                Pet(image: "pawprint.fill", name: "Doggy", animal: .dog),
                Pet(image: "pawprint.fill", name: "Catty", animal: .cat)
            ]
        )
    }
}

struct Pet {
    let image: String

    let name: String
    let animal: Animal
}

extension Pet {
    enum Animal: String {
        case dog
        case cat
    }
}
