//
//  Person.swift
//  AboutMe
//
//  Created by Alexander on 08.01.2022.
//

import UIKit

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
    let image: UIImage?

    let name: String
    let surname: String

    let age: String

    let hobby: String

    let country: String
    let city: String

    let pets: [Pet]

    static func getPerson() -> Person {
        Person(
            image: UIImage(named: "me"),
            name: "Aleksandr",
            surname: "Ilyk",
            age: "20",
            hobby: "programming",
            country: "Russia",
            city: "Moscow",
            pets: [
                Pet(image: UIImage(named: "dog"), name: "Pirog", animal: .dog),
                Pet(image: UIImage(named: "cat"), name: "Belyash", animal: .cat)
            ]
        )
    }
}

struct Pet {
    let image: UIImage?

    let name: String
    let animal: Animal
}

extension Pet {
    enum Animal: String {
        case dog
        case cat
    }
}
